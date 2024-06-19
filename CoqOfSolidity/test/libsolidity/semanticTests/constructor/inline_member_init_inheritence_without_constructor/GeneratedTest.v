(* Generated test file *)
Require Import CoqOfSolidity.CoqOfSolidity.
Require Import simulations.CoqOfSolidity.

Require test.libsolidity.semanticTests.constructor.inline_member_init_inheritence_without_constructor.Base.
Require test.libsolidity.semanticTests.constructor.inline_member_init_inheritence_without_constructor.Derived.

(* Calling the constructor of the last contract of the file *)
(* Last contract name: Derived *)
(* Transferred value: 0 *)
(* Arguments: "" *)
Definition constructor : M.t BlockUnit.t :=
  test.libsolidity.semanticTests.constructor.inline_member_init_inheritence_without_constructor.Derived.Derived.code.
