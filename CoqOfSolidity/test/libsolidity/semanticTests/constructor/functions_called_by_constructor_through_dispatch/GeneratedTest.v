(* Generated test file *)
Require Import CoqOfSolidity.CoqOfSolidity.
Require Import simulations.CoqOfSolidity.

Require test.libsolidity.semanticTests.constructor.functions_called_by_constructor_through_dispatch.Test.

(* Calling the constructor of the last contract of the file *)
(* Last contract name: Test *)
(* Transferred value: 0 *)
(* Arguments: "" *)
Definition constructor : M.t BlockUnit.t :=
  test.libsolidity.semanticTests.constructor.functions_called_by_constructor_through_dispatch.Test.Test.code.
