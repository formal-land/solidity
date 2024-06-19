(* Generated test file *)
Require Import CoqOfSolidity.CoqOfSolidity.
Require Import simulations.CoqOfSolidity.

Require test.libsolidity.semanticTests.constructor.evm_exceptions_in_constructor_call_fail.A.
Require test.libsolidity.semanticTests.constructor.evm_exceptions_in_constructor_call_fail.B.

(* Calling the constructor of the last contract of the file *)
(* Last contract name: B *)
(* Transferred value: 0 *)
(* Arguments: "" *)
Definition constructor : M.t BlockUnit.t :=
  test.libsolidity.semanticTests.constructor.evm_exceptions_in_constructor_call_fail.B.B.code.
