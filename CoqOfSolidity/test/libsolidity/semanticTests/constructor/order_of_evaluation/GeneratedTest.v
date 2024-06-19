(* Generated test file *)
Require Import CoqOfSolidity.CoqOfSolidity.
Require Import simulations.CoqOfSolidity.

Require test.libsolidity.semanticTests.constructor.order_of_evaluation.A.
Require test.libsolidity.semanticTests.constructor.order_of_evaluation.B.
Require test.libsolidity.semanticTests.constructor.order_of_evaluation.C.
Require test.libsolidity.semanticTests.constructor.order_of_evaluation.D.
Require test.libsolidity.semanticTests.constructor.order_of_evaluation.X.

(* Calling the constructor of the last contract of the file *)
(* Last contract name: X *)
(* Transferred value: 0 *)
(* Arguments: "" *)
Definition constructor : M.t BlockUnit.t :=
  test.libsolidity.semanticTests.constructor.order_of_evaluation.X.X.code.
