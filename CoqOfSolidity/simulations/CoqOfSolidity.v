Require Import CoqOfSolidity.CoqOfSolidity.
Require EVM.Crypto.Keccak.

Module Dict.
  Definition t (A : Set) : Set :=
    list (string * A).

  Fixpoint get {A : Set} (dict : t A) (name : string) : option A :=
    match dict with
    | [] => None
    | (name', value) :: dict =>
      if String.eqb name name' then
        Some value
      else
        get dict name
    end.

  Definition declare {A : Set} (dict : t A) (name : string) (value : A) : t A :=
    (name, value) :: dict.

  Fixpoint assign {A : Set} (dict : t A) (name : string) (value : A) : option (t A) :=
    match dict with
    | [] => None
    | ((name', _) as entry) :: dict =>
      if String.eqb name name' then
        Some ((name, value) :: dict)
      else
        match assign dict name value with
        | None => None
        | Some dict => Some (entry :: dict)
        end
    end.
End Dict.

Module Locals.
  Record t : Set := {
    functions : list (string * (list U256.t -> M.t (list U256.t)));
    variables : list (string * U256.t)
  }.

  Definition empty : t := {|
    functions := [];
    variables := [];
  |}.
End Locals.

Module Stack.
  Definition t : Set :=
    list Locals.t.

  Definition open_scope (stack : t) : t :=
    Locals.empty :: stack.

  Definition close_scope (stack : t) : t :=
    match stack with
    | [] => stack
    | _ :: stack => stack
    end.

  Fixpoint get_var (stack : t) (name : string) : U256.t :=
    match stack with
    | [] =>
      (* this case is not supposed to happen; we use a special value in order to see it in the logs
         if we need to debug *)
      42
    | locals :: stack =>
      match Dict.get locals.(Locals.variables) name with
      | None => get_var stack name
      | Some value => value
      end
    end.

  Definition declare_var (stack : t) (name : string) (value : U256.t) : t :=
    match stack with
    | [] => []
    | locals :: stack =>
      locals <| Locals.variables := Dict.declare locals.(Locals.variables) name value |> :: stack
    end.

  Fixpoint declare_vars (stack : t) (names : list string) (values : list U256.t) : t :=
    match names, values with
    | name :: names, value :: values =>
      declare_vars (declare_var stack name value) names values
    | _, _ => stack
    end.

  Fixpoint assign_var (stack : t) (name : string) (value : U256.t) : t :=
    match stack with
    | [] => []
    | locals :: stack =>
      match Dict.assign locals.(Locals.variables) name value with
      | None => locals :: assign_var stack name value
      | Some variables => locals <| Locals.variables := variables |> :: stack
      end
    end.

  Fixpoint assign_vars (stack : t) (names : list string) (values : list U256.t) : t :=
    match names, values with
    | name :: names, value :: values =>
      assign_vars (assign_var stack name value) names values
    | _, _ => stack
    end.

  Fixpoint get_function (stack : t) (name : string) : list U256.t -> M.t (list U256.t) :=
    match stack with
    | [] => fun _ => LowM.Impossible ("function '" ++ name ++ "' not found")
    | locals :: stack =>
      match Dict.get locals.(Locals.functions) name with
      | None => get_function stack name
      | Some function => function
      end
    end.

  Definition declare_function
      (stack : t)
      (name : string)
      (body : list U256.t -> M.t (list U256.t)) :
      t :=
    match stack with
    | [] => []
    | locals :: stack =>
      locals <| Locals.functions := Dict.declare locals.(Locals.functions) name body |> :: stack
    end.
End Stack.

Module Memory.
  (** We define the memory as a function instead of an explicit list as there can be holes in it. It
      goes from addresses in [U256.t] to bytes represented as [Z]. *)
  Definition t : Set :=
    U256.t -> Z.

  Definition init : t :=
    fun _ => 0.

  (** Get the bytes from some memory from a start adress and for a certain length. *)
  Definition get_bytes (memory : Memory.t) (start length : U256.t) : list Z :=
    List.map
      (fun (i : nat) =>
        let address : U256.t := start + Z.of_nat i in
        memory address
      )
      (List.seq 0 (Z.to_nat length)).

  Definition update_bytes (memory : Memory.t) (start : U256.t) (bytes : list Z) : Memory.t :=
    fun address =>
      let i : Z := address - start in
      if andb (0 <=? i) (i <? Z.of_nat (List.length bytes)) then
        List.nth_default 0 bytes (Z.to_nat i)
      else
        memory address.

  Definition u256_as_bytes (value : U256.t) : list Z :=
    List.map
      (fun (i : nat) => Z.shiftr value (8 * (31 - Z.of_nat i)) mod 256)
      (List.seq 0 32).

  Definition bytes_as_u256 (bytes : list Z) : U256.t :=
    List.fold_left
      (fun (acc : U256.t) (byte : Z) =>
        (acc * 256) + byte
      )
      bytes
      0.

  Definition bytes_as_bytes (bytes : list Z) : list Nibble.byte :=
    List.map
      (fun (byte : Z) => Nibble.byte_of_N (Z.to_N byte))
      bytes.
End Memory.

Module Storage.
  (** Each slot in the storage is a word. This is different from [Memory.t] where it is only
      bytes. *)
  Definition t : Set :=
    U256.t -> U256.t.

  Definition update (storage : Storage.t) (address value : U256.t) : Storage.t :=
    fun current_address =>
      if address =? current_address then
        value
      else
        storage current_address.
End Storage.

Module LoadedCode.
  (** The description of some code loaded into memory, to keep a trace of what was loaded. *)
  Record t : Set := {
    (** The name as a Yul object. *)
    name : Z;
    (** The start position in memory. *)
    address : U256.t;
    (** The length in memory. *)
    length : U256.t;
  }.
End LoadedCode.

Module CallStack.
  (** The list of functions that were called with their corresponding parameters. This is for
      debugging purpose only, and does not exist in the semantics of Yul. *)
  Definition t : Set :=
    list (string * list (string * U256.t)).
End CallStack.

Module State.
  (** The state contains the various kinds of memory that we use in a smart contract. *)
  Record t : Set := {
    stack : Stack.t;
    mem : Memory.t;
    storage : Storage.t;
    transientStorage : Storage.t;
    logs : list (list U256.t * list Z);
    loaded_codes : list LoadedCode.t;
    (** This is only for debugging *)
    call_stack : CallStack.t;
  }.
End State.

(** We consider that all the primitives can be defined as a function over the state. *)
Definition eval_primitive {A : Set}
    (environment : Environment.t)
    (state : State.t)
    (primitive : Primitive.t A) :
    A * State.t :=
  match primitive with
  | Primitive.OpenScope =>
    (
      tt,
      state <| State.stack := Stack.open_scope state.(State.stack) |>
    )
  | Primitive.CloseScope =>
    (
      tt,
      state <| State.stack := Stack.close_scope state.(State.stack) |>
    )
  | Primitive.GetVar name =>
    (
      Stack.get_var state.(State.stack) name,
      state
    )
  | Primitive.DeclareVars names values =>
    (
      tt,
      state <| State.stack := Stack.declare_vars state.(State.stack) names values |>
    )
  | Primitive.AssignVars names values =>
    (
      tt,
      state <| State.stack := Stack.assign_vars state.(State.stack) names values |>
    )
  | Primitive.MLoad address length =>
    (
      Memory.get_bytes state.(State.mem) address length,
      state
    )
  | Primitive.MStore address bytes =>
    (
      tt,
      state <| State.mem := Memory.update_bytes state.(State.mem) address bytes |>
    )
  | Primitive.SLoad address =>
    (
      state.(State.storage) address,
      state
    )
  | Primitive.SStore address value =>
    (
      tt,
      state <| State.storage := Storage.update state.(State.storage) address value |>
    )
  | Primitive.TLoad address =>
    (
      state.(State.transientStorage) address,
      state
    )
  | Primitive.TStore address value =>
    (
      tt,
      state <| State.transientStorage :=
        Storage.update state.(State.transientStorage) address value
      |>
    )
  | Primitive.Log topics payload =>
    (
      tt,
      state <| State.logs := (topics, payload) :: state.(State.logs) |>
    )
  | Primitive.LoadCode name address length =>
    (
      tt,
      state <| State.loaded_codes := {|
        LoadedCode.name := name;
        LoadedCode.address := address;
        LoadedCode.length := length;
      |} :: state.(State.loaded_codes) |>
    )
  | Primitive.GetEnvironment =>
    (
      environment,
      state
    )
  | Primitive.CallStackPush name arguments =>
    (
      tt,
      state <| State.call_stack := (name, arguments) :: state.(State.call_stack) |>
    )
  | Primitive.CallStackPop =>
    (
      tt,
      state <| State.call_stack := List.tl state.(State.call_stack) |>
    )
  end.

(** A function to evaluate an expression assuming that we have enough [fuel]. *)
Fixpoint eval {A : Set}
    (fuel : nat)
    (environment : Environment.t)
    (state : State.t)
    (e : LowM.t A) :
    (A + string) * State.t :=
  match fuel with
  | O => (inr "out of fuel", state)
  | S fuel =>
    match e with
    | LowM.Pure output => (inl output, state)
    | LowM.Primitive primitive k =>
      let '(value, state_inter) := eval_primitive environment state primitive in
      eval fuel environment state_inter (k value)
    | LowM.DeclareFunction name body k =>
      let state_inter :=
        state <| State.stack := Stack.declare_function state.(State.stack) name body |> in
      eval fuel environment state_inter k
    | LowM.CallFunction name arguments k =>
      let function := Stack.get_function state.(State.stack) name in
      let (results, state_inter) := eval fuel environment state (function arguments) in
      match results with
      | inl results => eval fuel environment state_inter (k results)
      | inr message => (inr message, state_inter)
      end
    | LowM.Let e1 k =>
      let (output_inter, state_inter) := eval fuel environment state e1 in
      match output_inter with
      | inl output_inter => eval fuel environment state_inter (k output_inter)
      | inr message => (inr message, state_inter)
      end
    | LowM.Impossible message => (inr ("Impossible: " ++ message)%string, state)
    end
  end.

Module Run.
  Reserved Notation "{{ environment , state | e ⇓ output | state' }}"
    (at level 70, no associativity).

  Inductive t {A : Set} (environment : Environment.t) (state : State.t) (output : A) :
      LowM.t A -> State.t -> Prop :=
  | Pure : {{ environment, state | LowM.Pure output ⇓ output | state }}
  | Primitive {B : Set} (primitive : Primitive.t B) (k : B -> LowM.t A) state' :
    let value_state_inter := eval_primitive environment state primitive in
    (* Because we are not allowed to destructure a value in an inductive definition, so we use
       the [fst] and [snd] functions instead of a pattern. *)
    let value := fst value_state_inter in
    let state_inter := snd value_state_inter in
    {{ environment, state_inter | k value ⇓ output | state' }} ->
    {{ environment, state | LowM.Primitive primitive k ⇓ output | state' }}
  | DeclareFunction name body k state' :
    let state_inter :=
      state <| State.stack := Stack.declare_function state.(State.stack) name body |> in
    {{ environment, state_inter | k ⇓ output | state' }} ->
    {{ environment, state | LowM.DeclareFunction name body k ⇓ output | state' }}
  | CallFunction name arguments k results state_inter state' :
    let function := Stack.get_function state.(State.stack) name in
    {{ environment, state | function arguments ⇓ results | state_inter }} ->
    {{ environment, state_inter | k results ⇓ output | state' }} ->
    {{ environment, state | LowM.CallFunction name arguments k ⇓ output | state' }}
  | Let {B : Set} (e1 : LowM.t B) k state_inter output_inter state' :
    {{ environment, state | e1 ⇓ output_inter | state_inter }} ->
    {{ environment, state_inter | k output_inter ⇓ output | state' }} ->
    {{ environment, state | LowM.Let e1 k ⇓ output | state' }}

  where "{{ environment , state | e ⇓ output | state' }}" :=
    (t environment state output e state').
End Run.

Import Run.

(** The [eval] function follows the semantics given by [Run.t]. *)
Fixpoint eval_is_run {A : Set}
    (fuel : nat)
    (environment : Environment.t)
    (state : State.t)
    (e : LowM.t A)
    (output : A)
    (state' : State.t) :
  eval fuel environment state e = (inl output, state') ->
  {{ environment, state | e ⇓ output | state' }}.
Proof.
  destruct fuel as [|fuel]; [discriminate|].
  destruct e; cbn; intros H_eval.
  { (* Pure *)
    inversion H_eval; constructor.
  }
  { (* Primitive *)
    destruct primitive;
      cbn in H_eval;
      constructor;
      eapply eval_is_run;
      eassumption.
  }
  { (* DeclareFunction *)
    constructor.
    eapply eval_is_run.
    eassumption.
  }
  { (* CallFunction *)
    destruct eval as [[results | message] locals_inter] eqn:H_eval_inter in H_eval.
    { econstructor;
        eapply eval_is_run;
        eassumption.
    }
    { discriminate. }
  }
  { (* Let *)
    destruct eval as [[results | message] locals_inter] eqn:H_eval_inter in H_eval.
    { econstructor;
        eapply eval_is_run;
        eassumption.
    }
    { discriminate. }
  }
  { (* Impossible *)
    discriminate.
  }
Qed.

Module Stdlib.
  Definition return_ (p s : U256.t) : M.t unit :=
    LowM.Pure (Result.Return p s Revert.Without).

  Definition stop : M.t unit :=
    return_ 0 0.

  Definition add (x y : U256.t) : U256.t :=
    (x + y) mod (2 ^ 256).

  Definition sub (x y : U256.t) : U256.t :=
    (x - y) mod (2 ^ 256).

  Definition mul (x y : U256.t) : U256.t :=
    (x * y) mod (2 ^ 256).

  Definition div (x y : U256.t) : U256.t :=
    if y =? 0 then 0 else x / y.

  Definition sdiv (x y : U256.t) : M.t U256.t :=
    LowM.Impossible "sdiv".

  Definition mod_ (x y : U256.t) : U256.t :=
    if y =? 0 then 0 else x mod y.

  Definition smod (x y : U256.t) : M.t U256.t :=
    LowM.Impossible "smod".

  Definition exp (x y : U256.t) : U256.t :=
    x ^ y.

  Definition not (x : U256.t) : U256.t :=
    Z.lnot x.

  Definition lt (x y : U256.t) : U256.t :=
    if x <? y then 1 else 0.

  Definition gt (x y : U256.t) : U256.t :=
    if x >? y then 1 else 0.

  (* Signed version of [lt] *)
  Definition slt (x y : U256.t) : M.t U256.t :=
    LowM.Impossible "slt".

  Definition sgt (x y : U256.t) : M.t U256.t :=
    LowM.Impossible "sgt".

  Definition eq (x y : U256.t) : U256.t :=
    if x =? y then 1 else 0.

  Definition iszero (x : U256.t) : U256.t :=
    if x =? 0 then 1 else 0.

  Definition and (x y : U256.t) : U256.t :=
    Z.land x y.

  Definition or (x y : U256.t) : U256.t :=
    Z.lor x y.

  Definition xor (x y : U256.t) : U256.t :=
    Z.lxor x y.

  Definition byte (n x : U256.t) : M.t U256.t :=
    LowM.Impossible "byte".

  Definition shl (x y : U256.t) : U256.t :=
    (y * (2 ^ x)) mod (2 ^ 256).

  Definition shr (x y : U256.t) : U256.t :=
    y / (2 ^ x).

  Definition sar (x y : U256.t) : M.t U256.t :=
    LowM.Impossible "sar".

  Definition addmod (x y m : U256.t) : U256.t :=
    (x + y) mod m.

  Definition mulmod (x y m : U256.t) : U256.t :=
    (x * y) mod m.

  Definition signextend (i x : U256.t) : M.t U256.t :=
    LowM.Impossible "signextend".

  Definition keccak256 (p n : U256.t) : M.t U256.t :=
    let* bytes := LowM.Primitive (Primitive.MLoad p n) M.pure in
    let bytes := Memory.bytes_as_bytes bytes in
    let hash : list Nibble.byte := EVM.Crypto.Keccak.keccak_256 bytes in
    let hash : list Z := (List.map (fun byte => Z.of_N (Nibble.N_of_byte byte))) hash in
    M.pure (Memory.bytes_as_u256 hash).

  Definition pc : M.t U256.t :=
    LowM.Impossible "pc".

  Definition pop (x : U256.t) : M.t unit :=
    LowM.Impossible "pop".

  Definition mload (address : U256.t) : M.t U256.t :=
    let* bytes := LowM.Primitive (Primitive.MLoad address 32) M.pure in
    M.pure (Memory.bytes_as_u256 bytes).

  Definition mstore (address value : U256.t) : M.t unit :=
    let bytes := Memory.u256_as_bytes value in
    LowM.Primitive (Primitive.MStore address bytes) M.pure.

  Definition mstore8 (address value : U256.t) : M.t unit :=
    let bytes := [value mod 256] in
    LowM.Primitive (Primitive.MStore address bytes) M.pure.

  Definition sload (address : U256.t) : M.t U256.t :=
    LowM.Primitive (Primitive.SLoad address) M.pure.

  Definition sstore (address value : U256.t) : M.t unit :=
    LowM.Primitive (Primitive.SStore address value) M.pure.

  Definition tload (address : U256.t) : M.t U256.t :=
    LowM.Primitive (Primitive.TLoad address) M.pure.

  Definition tstore (address value : U256.t) : M.t unit :=
    LowM.Primitive (Primitive.TStore address value) M.pure.

  Definition msize : M.t U256.t :=
    LowM.Impossible "msize".

  Definition gas : M.t U256.t :=
    LowM.Impossible "gas".

  Definition address : M.t U256.t :=
    LowM.Impossible "address".

  Definition balance (a : U256.t) : M.t U256.t :=
    LowM.Impossible "balance".

  Definition selfbalance : M.t U256.t :=
    LowM.Impossible "selfbalance".

  Definition caller : M.t U256.t :=
    LowM.Primitive Primitive.GetEnvironment (fun env => M.pure env.(Environment.caller)).

  Definition callvalue : M.t U256.t :=
    LowM.Primitive Primitive.GetEnvironment (fun env => M.pure env.(Environment.callvalue)).

  Definition calldataload (p : U256.t) : M.t U256.t :=
    LowM.Impossible "calldataload".

  Definition calldatasize : M.t U256.t :=
    LowM.Impossible "calldatasize".

  Definition calldatacopy (t f s : U256.t) : M.t unit :=
    LowM.Impossible "calldatacopy".

  Definition codesize : M.t U256.t :=
    LowM.Impossible "codesize".

  Definition codecopy (t f s : U256.t) : M.t unit :=
    LowM.Primitive (Primitive.LoadCode f t s) M.pure.

  Definition extcodesize (a : U256.t) : M.t U256.t :=
    LowM.Impossible "extcodesize".

  Definition extcodecopy (a t f s : U256.t) : M.t unit :=
    LowM.Impossible "extcodecopy".

  Definition returndatasize : M.t U256.t :=
    LowM.Impossible "returndatasize".

  Definition returndatacopy (t f s : U256.t) : M.t unit :=
    LowM.Impossible "returndatacopy".

  Definition mcopy (t f s : U256.t) : M.t unit :=
    LowM.Impossible "mcopy".

  Definition extcodehash (a : U256.t) : M.t U256.t :=
    LowM.Impossible "extcodehash".

  Definition create (v p n : U256.t) : M.t U256.t :=
    LowM.Impossible "create".

  Definition create2 (v p n s : U256.t) : M.t U256.t :=
    LowM.Impossible "create2".

  Definition call (g a v in_ insize out outsize : U256.t) : M.t U256.t :=
    LowM.Impossible "call".

  Definition callcode (g a v in_ insize out outsize : U256.t) : M.t U256.t :=
    LowM.Impossible "callcode".

  Definition delegatecall (g a in_ insize out outsize : U256.t) : M.t U256.t :=
    LowM.Impossible "delegatecall".

  Definition staticcall (g a in_ insize out outsize : U256.t) : M.t U256.t :=
    LowM.Impossible "staticcall".

  Definition revert (p s : U256.t) : M.t unit :=
    LowM.Pure (Result.Return p s Revert.With).

  Definition selfdestruct (a : U256.t) : M.t unit :=
    LowM.Impossible "selfdestruct".

  Definition invalid : M.t unit :=
    LowM.Impossible "invalid".

  Definition log0 (p s : U256.t) : M.t unit :=
    let* payload := LowM.Primitive (Primitive.MLoad p s) M.pure in
    LowM.Primitive (Primitive.Log [] payload) M.pure.

  Definition log1 (p s t1 : U256.t) : M.t unit :=
    let* payload := LowM.Primitive (Primitive.MLoad p s) M.pure in
    LowM.Primitive (Primitive.Log [t1] payload) M.pure.

  Definition log2 (p s t1 t2 : U256.t) : M.t unit :=
    let* payload := LowM.Primitive (Primitive.MLoad p s) M.pure in
    LowM.Primitive (Primitive.Log [t1; t2] payload) M.pure.

  Definition log3 (p s t1 t2 t3 : U256.t) : M.t unit :=
    let* payload := LowM.Primitive (Primitive.MLoad p s) M.pure in
    LowM.Primitive (Primitive.Log [t1; t2; t3] payload) M.pure.

  Definition log4 (p s t1 t2 t3 t4 : U256.t) : M.t unit :=
    let* payload := LowM.Primitive (Primitive.MLoad p s) M.pure in
    LowM.Primitive (Primitive.Log [t1; t2; t3; t4] payload) M.pure.

  Definition chainid : M.t U256.t :=
    LowM.Impossible "chainid".

  Definition basefee : M.t U256.t :=
    LowM.Impossible "basefee".

  Definition blobbasefee : M.t U256.t :=
    LowM.Impossible "blobbasefee".

  Definition origin : M.t U256.t :=
    LowM.Impossible "origin".

  Definition gasprice : M.t U256.t :=
    LowM.Impossible "gasprice".

  Definition blockhash (b : U256.t) : M.t U256.t :=
    LowM.Impossible "blockhash".

  Definition blobhash (i : U256.t) : M.t U256.t :=
    LowM.Impossible "blobhash".

  Definition coinbase : M.t U256.t :=
    LowM.Impossible "coinbase".

  Definition timestamp : M.t U256.t :=
    LowM.Impossible "timestamp".

  Definition number : M.t U256.t :=
    LowM.Impossible "number".

  Definition difficulty : M.t U256.t :=
    LowM.Impossible "difficulty".

  Definition prevrandao : M.t U256.t :=
    LowM.Impossible "prevrandao".

  Definition gaslimit : M.t U256.t :=
    LowM.Impossible "gaslimit".

  (** Additional functions for the object mode of Yul. *)
  Module Object.
    (** We assume that the optimizer does not use any additional memory. *)
    Definition memoryguard (size : U256.t) : M.t U256.t :=
      M.pure size.

    (** For the [dataoffset] function we use the Keccak256 of the [name] to have something unique,
        but it could be any value in the implementation *)
    Definition dataoffset (name : Z) : M.t U256.t :=
      let name : string := HexString.of_Z name in
      let hash : list Nibble.byte := EVM.Crypto.Keccak.keccak_256_of_string name in
      let hash : list Z := (List.map (fun byte => Z.of_N (Nibble.N_of_byte byte))) hash in
      M.pure (Memory.bytes_as_u256 hash).

    (** Same as for [dataoffset], we could take any value so we take one that is unique. *)
    Definition datasize (name : Z) : M.t U256.t :=
      dataoffset name.
  End Object.

  Notation "'fn' p '=>' body" :=
    (fun arguments =>
      match arguments with
      | p => body
      | _ => LowM.Impossible "wrong number of arguments"
      end)
    (at level 200, p pattern).

  Definition return_unit (body : M.t unit) : M.t (list U256.t) :=
    M.let_ body (fun _ => M.pure []).

  Definition return_u256 (body : M.t U256.t) : M.t (list U256.t) :=
    M.let_ body (fun result => M.pure [result]).

  Definition functions : list (string * (list U256.t -> M.t (list U256.t))) := [
    ("stop", fn [] => return_unit stop);
    ("add", fn [x; y] => return_u256 (M.pure (add x y)));
    ("sub", fn [x; y] => return_u256 (M.pure (sub x y)));
    ("mul", fn [x; y] => return_u256 (M.pure (mul x y)));
    ("div", fn [x; y] => return_u256 (M.pure (div x y)));
    ("sdiv", fn [x; y] => return_u256 (sdiv x y));
    ("mod", fn [x; y] => return_u256 (M.pure (mod_ x y)));
    ("smod", fn [x; y] => return_u256 (smod x y));
    ("exp", fn [x; y] => return_u256 (M.pure (exp x y)));
    ("not", fn [x] => return_u256 (M.pure (not x)));
    ("lt", fn [x; y] => return_u256 (M.pure (lt x y)));
    ("gt", fn [x; y] => return_u256 (M.pure (gt x y)));
    ("slt", fn [x; y] => return_u256 (slt x y));
    ("sgt", fn [x; y] => return_u256 (sgt x y));
    ("eq", fn [x; y] => return_u256 (M.pure (eq x y)));
    ("iszero", fn [x] => return_u256 (M.pure (iszero x)));
    ("and", fn [x; y] => return_u256 (M.pure (and x y)));
    ("or", fn [x; y] => return_u256 (M.pure (or x y)));
    ("xor", fn [x; y] => return_u256 (M.pure (xor x y)));
    ("byte", fn [n; x] => return_u256 (byte n x));
    ("shl", fn [x; y] => return_u256 (M.pure (shl x y)));
    ("shr", fn [x; y] => return_u256 (M.pure (shr x y)));
    ("sar", fn [x; y] => return_u256 (sar x y));
    ("addmod", fn [x; y; m] => return_u256 (M.pure (addmod x y m)));
    ("mulmod", fn [x; y; m] => return_u256 (M.pure (mulmod x y m)));
    ("signextend", fn [i; x] => return_u256 (signextend i x));
    ("keccak256", fn [p; n] => return_u256 (keccak256 p n));
    ("pc", fn [] => return_u256 pc);
    ("pop", fn [x] => return_unit (pop x));
    ("mload", fn [p] => return_u256 (mload p));
    ("mstore", fn [p; v] => return_unit (mstore p v));
    ("mstore8", fn [p; v] => return_unit (mstore8 p v));
    ("sload", fn [p] => return_u256 (sload p));
    ("sstore", fn [p; v] => return_unit (sstore p v));
    ("tload", fn [p] => return_u256 (tload p));
    ("tstore", fn [p; v] => return_unit (tstore p v));
    ("msize", fn [] => return_u256 msize);
    ("gas", fn [] => return_u256 gas);
    ("address", fn [] => return_u256 address);
    ("balance", fn [a] => return_u256 (balance a));
    ("selfbalance", fn [] => return_u256 selfbalance);
    ("caller", fn [] => return_u256 caller);
    ("callvalue", fn [] => return_u256 callvalue);
    ("calldataload", fn [p] => return_u256 (calldataload p));
    ("calldatasize", fn [] => return_u256 calldatasize);
    ("calldatacopy", fn [p; s; n] => return_unit (calldatacopy p s n));
    ("codesize", fn [] => return_u256 codesize);
    ("codecopy", fn [p; s; n] => return_unit (codecopy p s n));
    ("extcodesize", fn [a] => return_u256 (extcodesize a));
    ("extcodecopy", fn [a; p; s; n] => return_unit (extcodecopy a p s n));
    ("returndatasize", fn [] => return_u256 returndatasize);
    ("returndatacopy", fn [p; s; n] => return_unit (returndatacopy p s n));
    ("mcopy", fn [p; s; n] => return_unit (mcopy p s n));
    ("extcodehash", fn [a] => return_u256 (extcodehash a));
    ("create", fn [v; p; n] => return_u256 (create v p n));
    ("create2", fn [v; p; n; s] => return_u256 (create2 v p n s));
    ("call", fn [g; a; v; in_; insize; out; outsize] =>
      return_u256 (call g a v in_ insize out outsize));
    ("callcode", fn [g; a; v; in_; insize; out; outsize] =>
      return_u256 (callcode g a v in_ insize out outsize));
    ("delegatecall", fn [g; a; in_; insize; out; outsize] =>
      return_u256 (delegatecall g a in_ insize out outsize));
    ("staticcall", fn [g; a; in_; insize; out; outsize] =>
      return_u256 (staticcall g a in_ insize out outsize));
    ("return", fn [p; s] => return_unit (return_ p s));
    ("revert", fn [p; s] => return_unit (revert p s));
    ("selfdestruct", fn [a] => return_unit (selfdestruct a));
    ("invalid", fn [] => return_unit invalid);
    ("log0", fn [p; s] => return_unit (log0 p s));
    ("log1", fn [p; s; t1] => return_unit (log1 p s t1));
    ("log2", fn [p; s; t1; t2] => return_unit (log2 p s t1 t2));
    ("log3", fn [p; s; t1; t2; t3] => return_unit (log3 p s t1 t2 t3));
    ("log4", fn [p; s; t1; t2; t3; t4] => return_unit (log4 p s t1 t2 t3 t4));
    ("chainid", fn [] => return_u256 chainid);
    ("basefee", fn [] => return_u256 basefee);
    ("blobbasefee", fn [] => return_u256 blobbasefee);
    ("origin", fn [] => return_u256 origin);
    ("gasprice", fn [] => return_u256 gasprice);
    ("blockhash", fn [b] => return_u256 (blockhash b));
    ("blobhash", fn [i] => return_u256 (blobhash i));
    ("coinbase", fn [] => return_u256 coinbase);
    ("timestamp", fn [] => return_u256 timestamp);
    ("number", fn [] => return_u256 number);
    ("difficulty", fn [] => return_u256 difficulty);
    ("prevrandao", fn [] => return_u256 prevrandao);
    ("gaslimit", fn [] => return_u256 gaslimit);
    ("memoryguard", fn [p] => return_u256 (Object.memoryguard p));
    ("dataoffset", fn [name] => return_u256 (Object.dataoffset name));
    ("datasize", fn [name] => return_u256 (Object.datasize name))
  ].

  Definition init_stack : Stack.t :=
    [
      {|
        Locals.functions := Stdlib.functions;
        Locals.variables := [];
      |}
    ].

  Definition init_state : State.t :=
    {|
      State.stack := init_stack;
      State.mem := Memory.init;
      State.storage := Memory.init;
      State.transientStorage := Memory.init;
      State.logs := [];
      State.loaded_codes := [];
      State.call_stack := [];
    |}.
End Stdlib.

Require test.libsolidity.semanticTests.various.erc20.ERC20.

Definition foo_env : Environment.t := {|
  Environment.caller := 123;
  Environment.callvalue := 0;
|}.

Definition foo : _ * State.t := eval 200 foo_env Stdlib.init_state ERC20.ERC20_403.code.

Compute "result".
Compute fst foo.

Compute "stack length".
Compute List.length (snd foo).(State.stack).

Definition declared_vars (state : State.t) : list (list (string * U256.t)) :=
  List.map (fun locals => locals.(Locals.variables)) state.(State.stack).

Compute "declared_vars".
Compute declared_vars (snd foo).

Compute "logs".
Compute (snd foo).(State.logs).

Compute "loaded codes".
Compute (snd foo).(State.loaded_codes).

Compute "call stack".
Compute (snd foo).(State.call_stack).
