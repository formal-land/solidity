(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition b1 : Value.t :=
    M.call (|
      Ty.path "bytes1",
      [
        Value.Integer 0x01
      ]
    |).

  Definition b2 : Value.t :=
    M.get_name (| "b1" |).

  Definition b3 : Value.t :=
    M.get_name (| "b2" |).

  Definition b4 : Value.t :=
    M.get_name (| "b3" |).

  Definition b5 : Value.t :=
    M.get_name (| "b4" |).

  Definition b6 : Value.t :=
    M.get_name (| "b5" |).

  Definition b7 : Value.t :=
    M.get_name (| "b6" |).

  Definition b8 : Value.t :=
    M.get_name (| "b7" |).

  Definition b9 : Value.t :=
    M.get_name (| "b8" |).

  Definition b10 : Value.t :=
    M.get_name (| "b9" |).

  Definition b11 : Value.t :=
    M.get_name (| "b10" |).

  Definition b12 : Value.t :=
    M.get_name (| "b11" |).

  Definition b13 : Value.t :=
    M.get_name (| "b12" |).

  Definition b14 : Value.t :=
    M.get_name (| "b13" |).

  Definition b15 : Value.t :=
    M.get_name (| "b14" |).

  Definition b16 : Value.t :=
    M.get_name (| "b15" |).

  Definition b17 : Value.t :=
    M.get_name (| "b16" |).

  Definition b18 : Value.t :=
    M.get_name (| "b17" |).

  Definition b19 : Value.t :=
    M.get_name (| "b18" |).

  Definition b20 : Value.t :=
    M.get_name (| "b19" |).

  Definition b21 : Value.t :=
    M.get_name (| "b20" |).

  Definition b22 : Value.t :=
    M.get_name (| "b21" |).

  Definition b23 : Value.t :=
    M.get_name (| "b22" |).

  Definition b24 : Value.t :=
    M.get_name (| "b23" |).

  Definition b25 : Value.t :=
    M.get_name (| "b24" |).

  Definition b26 : Value.t :=
    M.get_name (| "b25" |).

  Definition b27 : Value.t :=
    M.get_name (| "b26" |).

  Definition b28 : Value.t :=
    M.get_name (| "b27" |).

  Definition b29 : Value.t :=
    M.get_name (| "b28" |).

  Definition b30 : Value.t :=
    M.get_name (| "b29" |).

  Definition b31 : Value.t :=
    M.get_name (| "b30" |).

  Definition b32 : Value.t :=
    M.get_name (| "b31" |).
End C.
