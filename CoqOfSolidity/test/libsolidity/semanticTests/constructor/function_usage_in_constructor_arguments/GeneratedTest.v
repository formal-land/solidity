(* Generated test file *)
Require Import CoqOfSolidity.CoqOfSolidity.
Require Import simulations.CoqOfSolidity.

Require test.libsolidity.semanticTests.constructor.function_usage_in_constructor_arguments.Base.
Require test.libsolidity.semanticTests.constructor.function_usage_in_constructor_arguments.BaseBase.
Require test.libsolidity.semanticTests.constructor.function_usage_in_constructor_arguments.Derived.

(* Calling the constructor of the last contract of the file *)
(* Last contract name: Derived *)
(* Transferred value: 0 *)
(* Arguments: "" *)
Definition constructor : M.t BlockUnit.t :=
  test.libsolidity.semanticTests.constructor.function_usage_in_constructor_arguments.Derived.Derived.code.
