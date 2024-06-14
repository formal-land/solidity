Require Import CoqOfSolidity.CoqOfSolidity.

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

Module Stdlib.
  Parameter axiom : string -> U256.t.

  Definition return_ (p s : U256.t) : M.t unit :=
    LowM.Pure (Result.Return p s).

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

  Definition sdiv (x y : U256.t) : U256.t :=
    axiom "sdiv".

  Definition mod_ (x y : U256.t) : U256.t :=
    if y =? 0 then 0 else x mod y.

  Definition smod (x y : U256.t) : U256.t :=
    axiom "smod".

  Definition exp (x y : U256.t) : U256.t :=
    x ^ y.

  Definition not (x : U256.t) : U256.t :=
    Z.lnot x.

  Definition lt (x y : U256.t) : U256.t :=
    if x <? y then 1 else 0.

  Definition gt (x y : U256.t) : U256.t :=
    if x >? y then 1 else 0.

  (* Signed version of [lt] *)
  Definition slt (x y : U256.t) : U256.t :=
    axiom "slt".

  Definition sgt (x y : U256.t) : U256.t :=
    axiom "sgt".

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

  Definition byte (n x : U256.t) : U256.t :=
    axiom "byte".

  Definition shl (x y : U256.t) : U256.t :=
    axiom "shl".

  Definition shr (x y : U256.t) : U256.t :=
    axiom "shr".

  Definition sar (x y : U256.t) : U256.t :=
    axiom "sar".

  Definition addmod (x y m : U256.t) : U256.t :=
    (x + y) mod m.

  Definition mulmod (x y m : U256.t) : U256.t :=
    (x * y) mod m.

  Definition signextend (i x : U256.t) : U256.t :=
    axiom "signextend".

  Definition keccak256 (p n : U256.t) : U256.t :=
    axiom "keccak256".

  Parameter pc : M.t U256.t.

  Parameter pop : U256.t -> M.t unit.

  Parameter mload : U256.t -> M.t U256.t.

  Parameter mstore : U256.t -> U256.t -> M.t unit.

  Parameter mstore8 : U256.t -> U256.t -> M.t unit.

  Parameter sload : U256.t -> M.t U256.t.

  Parameter sstore : U256.t -> U256.t -> M.t unit.

  Parameter tload : U256.t -> M.t U256.t.

  Parameter tstore : U256.t -> U256.t -> M.t unit.

  Parameter msize : M.t U256.t.

  Parameter gas : M.t U256.t.

  Parameter address : M.t U256.t.

  Parameter balance : U256.t -> M.t U256.t.

  Parameter selfbalance : M.t U256.t.

  Parameter caller : M.t U256.t.

  Parameter callvalue : M.t U256.t.

  Parameter calldataload : U256.t -> M.t U256.t.

  Parameter calldatasize : M.t U256.t.

  Parameter calldatacopy : U256.t -> U256.t -> U256.t -> M.t unit.

  Parameter codesize : M.t U256.t.

  Parameter codecopy : U256.t -> U256.t -> U256.t -> M.t unit.

  Parameter extcodesize : U256.t -> M.t U256.t.

  Parameter extcodecopy : U256.t -> U256.t -> U256.t -> U256.t -> M.t unit.

  Parameter returndatasize : M.t U256.t.

  Parameter returndatacopy : U256.t -> U256.t -> U256.t -> M.t unit.

  Parameter mcopy : U256.t -> U256.t -> U256.t -> M.t unit.

  Parameter extcodehash : U256.t -> M.t U256.t.

  Parameter create : U256.t -> U256.t -> U256.t -> M.t U256.t.

  Parameter create2 : U256.t -> U256.t -> U256.t -> U256.t -> M.t U256.t.

  Parameter call : U256.t -> U256.t -> U256.t -> U256.t -> U256.t -> U256.t -> U256.t -> M.t U256.t.

  Parameter callcode :
    U256.t -> U256.t -> U256.t -> U256.t -> U256.t -> U256.t -> U256.t -> M.t U256.t.

  Parameter delegatecall : U256.t -> U256.t -> U256.t -> U256.t -> U256.t -> U256.t -> M.t U256.t.

  Parameter staticcall : U256.t -> U256.t -> U256.t -> U256.t -> U256.t -> U256.t -> M.t U256.t.

  Parameter revert : U256.t -> U256.t -> M.t unit.

  Parameter selfdestruct : U256.t -> M.t unit.

  Parameter invalid : M.t unit.

  Parameter log0 : U256.t -> U256.t -> M.t unit.

  Parameter log1 : U256.t -> U256.t -> U256.t -> M.t unit.

  Parameter log2 : U256.t -> U256.t -> U256.t -> U256.t -> M.t unit.

  Parameter log3 : U256.t -> U256.t -> U256.t -> U256.t -> U256.t -> M.t unit.

  Parameter log4 : U256.t -> U256.t -> U256.t -> U256.t -> U256.t -> U256.t -> M.t unit.

  Parameter chainid : M.t U256.t.

  Parameter basefee : M.t U256.t.

  Parameter blobbasefee : M.t U256.t.

  Parameter origin : M.t U256.t.

  Parameter gasprice : M.t U256.t.

  Parameter blockhash : U256.t -> M.t U256.t.

  Parameter blobhash : U256.t -> M.t U256.t.

  Parameter coinbase : M.t U256.t.

  Parameter timestamp : M.t U256.t.

  Parameter number : M.t U256.t.

  Parameter difficulty : M.t U256.t.

  Parameter prevrandao : M.t U256.t.

  Parameter gaslimit : M.t U256.t.

  (** Additional functions for the object mode of Yul. *)
  Module Object.
    (** We assume that the optimizer does not use any additional memory. *)
    Definition memoryguard (size : U256.t) : M.t U256.t :=
      pure size.
  End Object.

  Notation "'fn' p '=>' body" :=
    (fun arguments =>
      match arguments with
      | p => body
      | _ => LowM.Impossible "wrong number of arguments"
      end)
    (at level 200, p pattern).

  Definition return_unit (body : M.t unit) : M.t (list U256.t) :=
    M.let_ body (fun _ => pure []).

  Definition return_u256 (body : M.t U256.t) : M.t (list U256.t) :=
    M.let_ body (fun result => pure [result]).

  Definition functions : list (string * (list U256.t -> M.t (list U256.t))) := [
    ("stop", fn [] => return_unit stop);
    ("add", fn [x; y] => return_u256 (pure (add x y)));
    ("sub", fn [x; y] => return_u256 (pure (sub x y)));
    ("mul", fn [x; y] => return_u256 (pure (mul x y)));
    ("div", fn [x; y] => return_u256 (pure (div x y)));
    ("sdiv", fn [x; y] => return_u256 (pure (sdiv x y)));
    ("mod", fn [x; y] => return_u256 (pure (mod_ x y)));
    ("smod", fn [x; y] => return_u256 (pure (smod x y)));
    ("exp", fn [x; y] => return_u256 (pure (exp x y)));
    ("not", fn [x] => return_u256 (pure (not x)));
    ("lt", fn [x; y] => return_u256 (pure (lt x y)));
    ("gt", fn [x; y] => return_u256 (pure (gt x y)));
    ("slt", fn [x; y] => return_u256 (pure (slt x y)));
    ("sgt", fn [x; y] => return_u256 (pure (sgt x y)));
    ("eq", fn [x; y] => return_u256 (pure (eq x y)));
    ("iszero", fn [x] => return_u256 (pure (iszero x)));
    ("and", fn [x; y] => return_u256 (pure (and x y)));
    ("or", fn [x; y] => return_u256 (pure (or x y)));
    ("xor", fn [x; y] => return_u256 (pure (xor x y)));
    ("byte", fn [n; x] => return_u256 (pure (byte n x)));
    ("shl", fn [x; y] => return_u256 (pure (shl x y)));
    ("shr", fn [x; y] => return_u256 (pure (shr x y)));
    ("sar", fn [x; y] => return_u256 (pure (sar x y)));
    ("addmod", fn [x; y; m] => return_u256 (pure (addmod x y m)));
    ("mulmod", fn [x; y; m] => return_u256 (pure (mulmod x y m)));
    ("signextend", fn [i; x] => return_u256 (pure (signextend i x)));
    ("keccak256", fn [p; n] => return_u256 (pure (keccak256 p n)));
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
    ("call", fn [g; a; v; p; s; v0; v1] => return_u256 (call g a v p s v0 v1));
    ("callcode", fn [g; a; v; p; s; v0; v1] => return_u256 (callcode g a v p s v0 v1));
    ("delegatecall", fn [g; a; p; s; v0; v1] => return_u256 (delegatecall g a p s v0 v1));
    ("staticcall", fn [g; a; p; s; v0; v1] => return_u256 (staticcall g a p s v0 v1));
    ("revert", fn [p; s] => return_unit (revert p s));
    ("selfdestruct", fn [a] => return_unit (selfdestruct a));
    ("invalid", fn [] => return_unit invalid);
    ("log0", fn [p; s] => return_unit (log0 p s));
    ("log1", fn [p; s; t] => return_unit (log1 p s t));
    ("log2", fn [p; s; t; u] => return_unit (log2 p s t u));
    ("log3", fn [p; s; t; u; v] => return_unit (log3 p s t u v));
    ("log4", fn [p; s; t; u; v; w] => return_unit (log4 p s t u v w));
    ("chainid", fn [] => return_u256 chainid);
    ("basefee", fn [] => return_u256 basefee);
    ("blobbasefee", fn [] => return_u256 blobbasefee);
    ("origin", fn [] => return_u256 origin);
    ("gasprice", fn [] => return_u256 gasprice);
    ("blockhash", fn [n] => return_u256 (blockhash n));
    ("blobhash", fn [n] => return_u256 (blobhash n));
    ("coinbase", fn [] => return_u256 coinbase);
    ("timestamp", fn [] => return_u256 timestamp);
    ("number", fn [] => return_u256 number);
    ("difficulty", fn [] => return_u256 difficulty);
    ("prevrandao", fn [] => return_u256 prevrandao);
    ("gaslimit", fn [] => return_u256 gaslimit);
    ("memoryguard", fn [p] => return_u256 (Object.memoryguard p))
  ].
End Stdlib.

Module Stack.
  Definition t : Set :=
    list Locals.t.

  Definition init : t :=
    [
      {|
        Locals.functions := Stdlib.functions;
        Locals.variables := [];
      |}
    ].

  Definition open_scope (stack : t) : t :=
    Locals.empty :: stack.

  Definition close_scope (stack : t) : t :=
    match stack with
    | [] => stack
    | _ :: stack => stack
    end.

  Fixpoint get_var (stack : t) (name : string) : U256.t :=
    match stack with
    | [] => 0
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

Module Run.
  Reserved Notation "{{ stack | e ⇓ output | stack' }}" (at level 70, no associativity).

  Inductive t {A : Set} (stack : Stack.t) (output : A) : LowM.t A -> Stack.t -> Prop :=
  | Pure : {{ stack | LowM.Pure output ⇓ output | stack }}
  | OpenScope k stack' :
    {{ Stack.open_scope stack | k tt ⇓ output | stack' }} ->
    {{ stack | LowM.Primitive Primitive.OpenScope k ⇓ output | stack' }}
  | CloseScope k stack' :
    {{ Stack.close_scope stack | k tt ⇓ output | stack' }} ->
    {{ stack | LowM.Primitive Primitive.CloseScope k ⇓ output | stack' }}
  | GetVar name k stack' :
    let value := Stack.get_var stack name in
    {{ stack | k value ⇓ output | stack' }} ->
    {{ stack | LowM.Primitive (Primitive.GetVar name) k ⇓ output | stack' }}
  | DeclareVars names values k stack' :
    {{ Stack.declare_vars stack names values | k tt ⇓ output | stack' }} ->
    {{ stack | LowM.Primitive (Primitive.DeclareVars names values) k ⇓ output | stack' }}
  | AssignVars names values k stack' :
    {{ Stack.assign_vars stack names values | k tt ⇓ output | stack' }} ->
    {{ stack | LowM.Primitive (Primitive.AssignVars names values) k ⇓ output | stack' }}
  | CallFunction name arguments k results stack_inter stack' :
    let function := Stack.get_function stack name in
    {{ stack | function arguments ⇓ results | stack_inter }} ->
    {{ stack_inter | k results ⇓ output | stack' }} ->
    {{ stack | LowM.Primitive (Primitive.CallFunction name arguments) k ⇓ output | stack' }}
  | DeclareFunction name body k stack' :
    {{ Stack.declare_function stack name body | k ⇓ output | stack' }} ->
    {{ stack | LowM.DeclareFunction name body k ⇓ output | stack' }}
  | Let {B : Set} (e1 : LowM.t B) k stack_inter output_inter stack' :
    {{ stack | e1 ⇓ output_inter | stack_inter }} ->
    {{ stack_inter | k output_inter ⇓ output | stack' }} ->
    {{ stack | LowM.Let e1 k ⇓ output | stack' }}

  where "{{ stack | e ⇓ output | stack' }}" :=
    (t stack output e stack').
End Run.

Import Run.

(** A function to evaluate an expression assuming enough [fuel]. *)
Fixpoint eval {A : Set} (fuel : nat) (stack : Stack.t) (e : LowM.t A) : (A + string) * Stack.t :=
  match fuel with
  | O => (inr "out of fuel", stack)
  | S fuel =>
    match e with
    | LowM.Pure output => (inl output, stack)
    | LowM.Primitive Primitive.OpenScope k =>
      eval fuel (Stack.open_scope stack) (k tt)
    | LowM.Primitive Primitive.CloseScope k =>
      eval fuel (Stack.close_scope stack) (k tt)
    | LowM.Primitive (Primitive.GetVar name) k =>
      let value := Stack.get_var stack name in
      eval fuel stack (k value)
    | LowM.Primitive (Primitive.DeclareVars names values) k =>
      eval fuel (Stack.declare_vars stack names values) (k tt)
    | LowM.Primitive (Primitive.AssignVars names values) k =>
      eval fuel (Stack.assign_vars stack names values) (k tt)
    | LowM.Primitive (Primitive.CallFunction name arguments) k =>
      let function := Stack.get_function stack name in
      let (results, stack_inter) := eval fuel stack (function arguments) in
      match results with
      | inl results => eval fuel stack_inter (k results)
      | inr message => (inr message, stack)
      end
    | LowM.DeclareFunction name body k =>
      eval fuel (Stack.declare_function stack name body) k
    | LowM.Let e1 k =>
      let (output_inter, stack_inter) := eval fuel stack e1 in
      match output_inter with
      | inl output_inter => eval fuel stack_inter (k output_inter)
      | inr message => (inr message, stack)
      end
    | LowM.Impossible message => (inr ("Impossible: " ++ message)%string, stack)
    end
  end.

(** The [eval] function follows the semantics given by [Run.t]. *)
Fixpoint eval_is_run {A : Set}
    (fuel : nat) (stack : Stack.t) (e : LowM.t A) (output : A) (stack' : Stack.t) :
  eval fuel stack e = (inl output, stack') ->
  {{ stack | e ⇓ output | stack' }}.
Proof.
  destruct fuel as [|fuel]; [discriminate|].
  destruct e; cbn; intros H_eval.
  { (* Pure *)
    inversion H_eval; constructor.
  }
  { (* Primitive *)
    destruct primitive.
    { (* OpenScope *)
      constructor.
      eapply eval_is_run.
      eassumption.
    }
    { (* CloseScope *)
      constructor.
      eapply eval_is_run.
      eassumption.
    }
    { (* GetVar *)
      constructor.
      eapply eval_is_run.
      eassumption.
    }
    { (* DeclareVars *)
      constructor.
      eapply eval_is_run.
      eassumption.
    }
    { (* AssignVars *)
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
  }
  { (* DeclareFunction *)
    constructor.
    eapply eval_is_run.
    eassumption.
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

Require test.libsolidity.semanticTests.various.erc20.ERC20.

Definition foo : _ * Stack.t := eval 41 Stack.init ERC20.ERC20_403.code.

Eval cbn in (fst foo).
