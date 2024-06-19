(* Generated test file *)
Require Import CoqOfSolidity.CoqOfSolidity.
Require Import simulations.CoqOfSolidity.

Require test.libsolidity.semanticTests.constructor.payable_constructor.C.

(* Calling the constructor of the last contract of the file *)
(* Last contract name: C *)
(* Transferred value: 27 *)
(* Arguments: "" *)
Definition constructor : M.t BlockUnit.t :=
  test.libsolidity.semanticTests.constructor.payable_constructor.C.C.code.
