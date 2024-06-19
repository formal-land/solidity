(* Generated test file *)
Require Import CoqOfSolidity.CoqOfSolidity.
Require Import simulations.CoqOfSolidity.

Require test.libsolidity.semanticTests.constructor.constructor_arguments_internal.Helper.
Require test.libsolidity.semanticTests.constructor.constructor_arguments_internal.Main.

(* Calling the constructor of the last contract of the file *)
(* Last contract name: Main *)
(* Transferred value: 0 *)
(* Arguments: "" *)
Definition constructor : M.t BlockUnit.t :=
  test.libsolidity.semanticTests.constructor.constructor_arguments_internal.Main.Main.code.
