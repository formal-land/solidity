(* Generated test file *)
Require Import CoqOfSolidity.CoqOfSolidity.
Require Import simulations.CoqOfSolidity.

Require test.libsolidity.semanticTests.constructor_with_params_inheritance_2.C.
Require test.libsolidity.semanticTests.constructor_with_params_inheritance_2.D.

(* Calling the constructor of the last contract of the file *)
(* Last contract name: D *)
(* Transferred value: 0 *)
(* Arguments: "" *)
Definition constructor : M.t BlockUnit.t :=
  test.libsolidity.semanticTests.constructor_with_params_inheritance_2.D.D.code.
