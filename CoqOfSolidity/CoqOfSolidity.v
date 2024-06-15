Require Export Coq.Strings.Ascii.
Require Coq.Strings.HexString.
Require Export Coq.Strings.String.
Require Export Coq.ZArith.ZArith.
Require Export RecordUpdate.

Require Export Lia.
From Hammer Require Export Tactics.

Global Set Primitive Projections.
Global Set Printing Projections.
Global Open Scope char_scope.
Global Open Scope string_scope.
Global Open Scope list_scope.
Global Open Scope type_scope.
Global Open Scope Z_scope.

Export List.ListNotations.

Inductive sigS {A : Type} (P : A -> Set) : Set :=
| existS : forall (x : A), P x -> sigS P.
Arguments existS {_ _}.

Reserved Notation "{ x @ P }" (at level 0, x at level 99).
Reserved Notation "{ x : A @ P }" (at level 0, x at level 99).
Reserved Notation "{ ' pat : A @ P }"
  (at level 0, pat strict pattern, format "{ ' pat : A @ P }").

Notation "{ x @ P }" := (sigS (fun x => P)) : type_scope.
Notation "{ x : A @ P }" := (sigS (A := A) (fun x => P)) : type_scope.
Notation "{ ' pat : A @ P }" := (sigS (A := A) (fun pat => P)) : type_scope.

Module U256.
  Definition t := Z.
End U256.

Module BlockUnit.
  Inductive t : Set :=
  | Tt
  | Break
  | Continue
  | Leave.
End BlockUnit.

Module Result.
  Inductive t (A : Set) : Set :=
  | Ok (output : A)
  | Return (p s : U256.t).
  Arguments Ok {_}.
  Arguments Return {_}.
End Result.

Module Primitive.
  Inductive t : Set -> Set :=
  | OpenScope : t unit
  | CloseScope : t unit
  | GetVar (name : string) : t U256.t
  | DeclareVars (names : list string) (values : list U256.t) : t unit
  | AssignVars (names : list string) (values : list U256.t) : t unit
  | MLoad (address : U256.t) : t U256.t
  | MStore (address value : U256.t) : t unit
  | SLoad (address : U256.t) : t U256.t
  | SStore (address value : U256.t) : t unit
  | TLoad (address : U256.t) : t U256.t
  | TStore (address value : U256.t) : t unit.
End Primitive.

Module LowM.
  Inductive t (A : Set) : Set :=
  | Pure (output : A)
  | Primitive {B : Set}
      (primitive : Primitive.t B)
      (k : B -> t A)
  | DeclareFunction
      (name : string)
      (body : list U256.t -> t (Result.t (list U256.t)))
      (k : t A)
  | CallFunction
      (name : string)
      (arguments : list U256.t)
      (k : Result.t (list U256.t) -> t A)
  (** Explicit cut in the monadic expressions, to provide better composition for the proofs. *)
  | Let {B : Set} (e1 : t B) (k : B -> t A)
  | Impossible (message : string).
  Arguments Pure {_}.
  Arguments Primitive {_ _}.
  Arguments DeclareFunction {_}.
  Arguments CallFunction {_}.
  Arguments Let {_ _}.
  Arguments Impossible {_}.

  Fixpoint let_ {A B : Set} (e1 : t A) (e2 : A -> t B) : t B :=
    match e1 with
    | Pure (output) =>
      e2 output
    | Primitive primitive k =>
      Primitive primitive (fun result => let_ (k result) e2)
    | DeclareFunction name body k =>
      DeclareFunction name body (let_ k e2)
    | CallFunction name arguments k =>
      CallFunction name arguments (fun result => let_ (k result) e2)
    | Let e1 k =>
      Let e1 (fun result => let_ (k result) e2)
    | Impossible message => Impossible message
    end.
End LowM.

Module M.
  Definition t (A : Set) := LowM.t (Result.t A).

  (** This axiom is only used as a marker, we eliminate it later. *)
  Parameter run : forall {A : Set}, t A -> A.

  Definition pure {A : Set} (output : A) : t A :=
    LowM.Pure (Result.Ok output).

  Definition generic_let {A B : Set}
      (let_ : forall {A B : Set}, LowM.t A -> (A -> LowM.t B) -> LowM.t B)
      (e1 : t A)
      (e2 : A -> t B) :
      t B :=
    let_ e1 (fun result =>
    match result with
    | Result.Ok value => e2 value
    | Result.Return p s => LowM.Pure (Result.Return p s)
    end).
  Arguments generic_let /.

  Definition let_ {A B : Set} : t A -> (A -> t B) -> t B :=
    generic_let (@LowM.let_).

  Definition do (e1 : t BlockUnit.t) (e2 : t BlockUnit.t) : t BlockUnit.t :=
    generic_let (fun A B => @LowM.Let B A) e1 (fun output =>
    match output with
    | BlockUnit.Tt => e2
    | _ => pure output
    end).

  Definition open_scope : t BlockUnit.t :=
    LowM.Primitive Primitive.OpenScope (fun _ => pure BlockUnit.Tt).

  Definition close_scope : t BlockUnit.t :=
    LowM.Primitive Primitive.CloseScope (fun _ => pure BlockUnit.Tt).

  Definition expr_stmt (_ : list U256.t) : t BlockUnit.t :=
    pure BlockUnit.Tt.

  Definition call (name : string) (arguments : list (list U256.t)) : t (list U256.t) :=
    let arguments := List.map (fun argument => List.hd 0 argument) arguments in
    LowM.CallFunction name arguments LowM.Pure.

  Definition if_ (condition : list U256.t) (success : t BlockUnit.t) : t BlockUnit.t :=
    match condition with
    | [0] => pure BlockUnit.Tt
    | [1] => success
    | _ => LowM.Impossible "if_ condition must be a single boolean"
    end.

  Definition declare (names : list string) (values : option (list U256.t)) : t BlockUnit.t :=
    let values_with_default :=
      match values with
      | None => List.map (fun _ => 0) names
      | Some values => values
      end in
    LowM.Primitive (Primitive.DeclareVars names values_with_default) (fun _ => pure BlockUnit.Tt).

  Definition assign (names : list string) (values : option (list U256.t)) : t BlockUnit.t :=
    let values_with_default :=
      match values with
      | None => List.map (fun _ => 0) names
      | Some values => values
      end in
    LowM.Primitive (Primitive.AssignVars names values_with_default) (fun _ => pure BlockUnit.Tt).

  Definition get_var (name : string) : t (list U256.t) :=
    LowM.Primitive (Primitive.GetVar name) (fun value => pure [value]).

  Fixpoint get_vars (names : list string) : t (list U256.t) :=
    match names with
    | [] => pure []
    | name :: names =>
      LowM.Primitive (Primitive.GetVar name) (fun value =>
      let_ (get_vars names) (fun values =>
      pure (value :: values)))
    end.

  Definition function (name : string) (arguments results : list string) (body : t BlockUnit.t) :
      t BlockUnit.t :=
    let body : list U256.t -> t (list U256.t) :=
      fun argument_values =>
        let_ (assign arguments (Some argument_values)) (fun _ =>
        let_ body (fun _ =>
        get_vars results)) in
    LowM.DeclareFunction name body (pure BlockUnit.Tt).

  Fixpoint switch_aux (value : U256.t) (cases : list (option U256.t * t BlockUnit.t)) :
      t BlockUnit.t :=
    match cases with
    | [] => LowM.Impossible "switch must have at least one case"
    | (None, body) :: _ => body
    | (Some current_value, body) :: cases =>
      if Z.eqb current_value value then
        body
      else
        switch_aux value cases
    end.

  Definition switch (values : list U256.t) (cases : list (option U256.t * t BlockUnit.t)) :
      t BlockUnit.t :=
    let_ (
      match values with
      | [value] => pure value
      | _ => LowM.Impossible "switch value must be a single value"
      end
    ) (fun value =>
      switch_aux value cases
    ).

  Parameter for_ : list U256.t -> t BlockUnit.t -> t BlockUnit.t -> t BlockUnit.t.

  Definition break : t BlockUnit.t :=
    pure BlockUnit.Break.

  Definition continue : t BlockUnit.t :=
    pure BlockUnit.Continue.

  Definition leave : t BlockUnit.t :=
    pure BlockUnit.Leave.

  (** A tactic that replaces all [run] markers with a bind operation.
      This allows to represent Rust programs without introducing
      explicit names for all intermediate computation results. *)
  Ltac monadic e :=
    lazymatch e with
    | context ctxt [let v := ?x in @?f v] =>
      refine (let_ _ _);
        [ monadic x
        | let v' := fresh v in
          intro v';
          let y := (eval cbn beta in (f v')) in
          lazymatch context ctxt [let v := x in y] with
          | let _ := x in y => monadic y
          | _ =>
            refine (let_ _ _);
              [ monadic y
              | let w := fresh "v" in
                intro w;
                let z := context ctxt [w] in
                monadic z
              ]
          end
        ]
    | context ctxt [run ?x] =>
      lazymatch context ctxt [run x] with
      | run x => monadic x
      | _ =>
        refine (let_ _ _);
          [ monadic x
          | let v := fresh "v" in
            intro v;
            let y := context ctxt [v] in
            monadic y
          ]
      end
    | _ =>
      lazymatch type of e with
      | t _ => exact e
      | _ => exact (pure e)
      end
    end.
End M.

Module Notations.
  Notation "'do*' a 'in' b" :=
    (M.do a b)
    (at level 200).

  Notation "e (| e1 , .. , en |)" :=
    (M.run ((.. (e e1) ..) en))
    (at level 100).

  Notation "e (||)" :=
    (M.run e)
    (at level 100).
End Notations.

Export M.
Export Notations.

Module Literal.
  Definition number (z : Z) : U256.t :=
    z.

  Definition bool (b : bool) : U256.t :=
    if b then 1 else 0.

  Definition string (hex : string) : U256.t :=
    HexString.to_Z hex.
End Literal.
