(* Generated test file *)
Require Import CoqOfSolidity.CoqOfSolidity.
Require Import simulations.CoqOfSolidity.

Require test.libsolidity.semanticTests.constructor.callvalue_check.A1.
Require test.libsolidity.semanticTests.constructor.callvalue_check.A2.
Require test.libsolidity.semanticTests.constructor.callvalue_check.B1.
Require test.libsolidity.semanticTests.constructor.callvalue_check.B2.
Require test.libsolidity.semanticTests.constructor.callvalue_check.B3.
Require test.libsolidity.semanticTests.constructor.callvalue_check.B4.
Require test.libsolidity.semanticTests.constructor.callvalue_check.C.

(* Calling the constructor of the last contract of the file *)
(* Last contract name: C *)
(* Transferred value: 0 *)
(* Arguments: "" *)
Definition constructor : M.t BlockUnit.t :=
  test.libsolidity.semanticTests.constructor.callvalue_check.C.C.code.
