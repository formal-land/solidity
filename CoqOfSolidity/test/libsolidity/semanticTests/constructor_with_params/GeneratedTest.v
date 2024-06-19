(* Generated test file *)
Require Import CoqOfSolidity.CoqOfSolidity.
Require Import simulations.CoqOfSolidity.

Require test.libsolidity.semanticTests.constructor_with_params.C.

(* Calling the constructor of the last contract of the file *)
(* Last contract name: C *)
(* Transferred value: 0 *)
(* Arguments: "00000000000000000000000000000000000000000000000000000000000000020000000000000000000000000000000000000000000000000000000000000000" *)
Definition constructor : M.t BlockUnit.t :=
  test.libsolidity.semanticTests.constructor_with_params.C.C.code.
