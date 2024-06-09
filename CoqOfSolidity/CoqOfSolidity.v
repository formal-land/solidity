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

Module U256.
  Definition t := Z.
End U256.

Module M.
  Parameter t : Set -> Set.

  Parameter pure : forall {A : Set}, A -> t A.

  Parameter let_ : forall {A B : Set}, t A -> (A -> t B) -> t B.

  Parameter run : forall {A : Set}, t A -> A.

  Parameter call : string -> list (list U256.t) -> t (list U256.t).

  Parameter if_ : list U256.t -> t unit -> t unit.

  Parameter assign : list string -> list U256.t -> t unit.

  Parameter declare : list string -> list U256.t -> t unit.

  Parameter get : string -> t (list U256.t).

  Parameter function : string -> list string -> list string -> t unit -> t unit.

  Parameter case : list U256.t -> t unit -> t unit.

  (** A tactic that replaces all [M.run] markers with a bind operation.
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
  Definition number (z : Z) : list U256.t :=
    [z].

  Definition bool (b : bool) : list U256.t :=
    if b then [1] else [0].

  Definition string (hex : string) : list U256.t :=
    [HexString.to_Z hex].
End Literal.
