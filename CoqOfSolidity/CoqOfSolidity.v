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
  | Ok
  | Break
  | Continue
  | Leave.
End BlockUnit.

Module M.
  Inductive t (A : Set) : Set :=
  | Pure (output : A)
  | GetVar
      (name : string)
      (k : U256.t -> t A)
  | SetVar
      (names : list string)
      (values : list U256.t)
      (k : t A)
  | CallFunction
      (name : string)
      (arguments : list U256.t)
      (k : list U256.t -> t A)
  | DeclareFunction
      (name : string)
      (body : list U256.t -> t (list U256.t))
      (k : t A)
  | Impossible (message : string).
  Arguments Pure {_}.
  Arguments GetVar {_}.
  Arguments SetVar {_}.
  Arguments CallFunction {_}.
  Arguments DeclareFunction {_}.
  Arguments Impossible {_}.

  (** This axiom is only used as a marker, we eliminate it later. *)
  Parameter run : forall {A : Set}, t A -> A.

  Fixpoint let_ {A B : Set} (e1 : t A) (e2 : A -> t B) : t B :=
    match e1 with
    | Pure (output) =>
      e2 output
    | GetVar name k =>
      GetVar name (fun value => let_ (k value) e2)
    | SetVar names values k =>
      SetVar names values (let_ k e2)
    | CallFunction name arguments k =>
      CallFunction name arguments (fun values => let_ (k values) e2)
    | DeclareFunction name body k =>
      DeclareFunction name body (let_ k e2)
    | Impossible message => Impossible message
    end.

  Definition do (e1 : t BlockUnit.t) (e2 : t BlockUnit.t) : t BlockUnit.t :=
    let_ e1 (fun output =>
    match output with
    | BlockUnit.Ok => e2
    | _ => Pure output
    end).

  Definition od : t BlockUnit.t :=
    Pure BlockUnit.Ok.

  Definition expr_stmt (_ : list U256.t) : t BlockUnit.t :=
    od.

  Definition call (name : string) (arguments : list (list U256.t)) : t (list U256.t) :=
    let arguments := List.map (fun argument => List.hd 0 argument) arguments in
    CallFunction name arguments Pure.

  Definition if_ (condition : list U256.t) (success : t BlockUnit.t) : t BlockUnit.t :=
    match condition with
    | [0] => Pure BlockUnit.Ok
    | [1] => success
    | _ => Impossible "if_ condition must be a single boolean"
    end.

  Definition assign (names : list string) (values : option (list U256.t)) : t BlockUnit.t :=
    let values_with_default :=
      match values with
      | None => List.map (fun _ => 0) names
      | Some values => values
      end in
    SetVar names values_with_default (Pure BlockUnit.Ok).

  Definition get (name : string) : t (list U256.t) :=
    GetVar name (fun value => Pure [value]).

  Fixpoint gets (names : list string) : t (list U256.t) :=
    match names with
    | [] => Pure []
    | name :: names =>
      GetVar name (fun value =>
      let_ (gets names) (fun values =>
      Pure (value :: values)))
    end.

  Definition function (name : string) (arguments results : list string) (body : t BlockUnit.t) :
      t BlockUnit.t :=
    let body : list U256.t -> t (list U256.t) :=
      fun argument_values =>
        let_ (assign arguments (Some argument_values)) (fun _ =>
        let_ body (fun _ =>
        gets results)) in
    DeclareFunction name body (Pure BlockUnit.Ok).

  Fixpoint switch_aux (value : U256.t) (cases : list (option U256.t * t BlockUnit.t)) :
      t BlockUnit.t :=
    match cases with
    | [] => Impossible "switch must have at least one case"
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
      | [value] => Pure value
      | _ => Impossible "switch value must be a single value"
      end
    ) (fun value =>
      switch_aux value cases
    ).

  Parameter for_ : list U256.t -> t BlockUnit.t -> t BlockUnit.t -> t BlockUnit.t.

  Definition break : t BlockUnit.t :=
    Pure BlockUnit.Break.

  Definition continue : t BlockUnit.t :=
    Pure BlockUnit.Continue.

  Definition leave : t BlockUnit.t :=
    Pure BlockUnit.Leave.

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
      | _ => exact (Pure e)
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
