(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition a : Value.t :=
    M.bin_op (|
      ">>",
      M.un_op (|
        true,
        "-",
        Value.Integer 0x4200
      |),
      Value.Integer 8
    |).
End C.
