(* Generated test file *)
Require Import CoqOfSolidity.CoqOfSolidity.
Require Import simulations.CoqOfSolidity.

Require test.libsolidity.semanticTests.constructor.constructor_arguments_external.Main.

(* Calling the constructor of the last contract of the file *)
(* Last contract name: Main *)
(* Transferred value: 0 *)
(* Arguments: "61626300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001" *)
Definition constructor : M.t BlockUnit.t :=
  test.libsolidity.semanticTests.constructor.constructor_arguments_external.Main.Main.code.
