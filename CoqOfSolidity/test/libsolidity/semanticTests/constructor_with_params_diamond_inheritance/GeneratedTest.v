(* Generated test file *)
Require Import CoqOfSolidity.CoqOfSolidity.
Require Import simulations.CoqOfSolidity.

Require test.libsolidity.semanticTests.constructor_with_params_diamond_inheritance.A.
Require test.libsolidity.semanticTests.constructor_with_params_diamond_inheritance.B.
Require test.libsolidity.semanticTests.constructor_with_params_diamond_inheritance.C.
Require test.libsolidity.semanticTests.constructor_with_params_diamond_inheritance.D.

(* Calling the constructor of the last contract of the file *)
(* Last contract name: D *)
(* Transferred value: 0 *)
(* Arguments: "00000000000000000000000000000000000000000000000000000000000000020000000000000000000000000000000000000000000000000000000000000000" *)
Definition constructor : M.t BlockUnit.t :=
  test.libsolidity.semanticTests.constructor_with_params_diamond_inheritance.D.D.code.
