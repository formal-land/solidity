(* Generated test file *)
Require Import CoqOfSolidity.CoqOfSolidity.
Require Import simulations.CoqOfSolidity.

Require test.libsolidity.semanticTests.constructor.store_internal_unused_library_function_in_constructor.C.
Require test.libsolidity.semanticTests.constructor.store_internal_unused_library_function_in_constructor.L.

(* Calling the constructor of the last contract of the file *)
(* Last contract name: C *)
(* Transferred value: 0 *)
(* Arguments: "" *)
Definition constructor : M.t BlockUnit.t :=
  test.libsolidity.semanticTests.constructor.store_internal_unused_library_function_in_constructor.C.C.code.
