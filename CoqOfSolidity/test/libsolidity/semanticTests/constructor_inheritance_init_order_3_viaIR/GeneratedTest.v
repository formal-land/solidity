(* Generated test file *)
Require Import CoqOfSolidity.CoqOfSolidity.
Require Import simulations.CoqOfSolidity.

Require test.libsolidity.semanticTests.constructor_inheritance_init_order_3_viaIR.A.
Require test.libsolidity.semanticTests.constructor_inheritance_init_order_3_viaIR.B.

(* Calling the constructor of the last contract of the file *)
(* Last contract name: B *)
(* Transferred value: 0 *)
(* Arguments: "" *)
Definition constructor : M.t BlockUnit.t :=
  test.libsolidity.semanticTests.constructor_inheritance_init_order_3_viaIR.B.B.code.
