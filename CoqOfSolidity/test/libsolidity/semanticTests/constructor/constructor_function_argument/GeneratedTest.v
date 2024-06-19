(* Generated test file *)
Require Import CoqOfSolidity.CoqOfSolidity.
Require Import simulations.CoqOfSolidity.

Require test.libsolidity.semanticTests.constructor.constructor_function_argument.D.

(* Calling the constructor of the last contract of the file *)
(* Last contract name: D *)
(* Transferred value: 0 *)
(* Arguments: "0fdd67305928fcac8d213d1e47bfa6165cd0b87b946644cd0000000000000000" *)
Definition constructor : M.t BlockUnit.t :=
  test.libsolidity.semanticTests.constructor.constructor_function_argument.D.D.code.
