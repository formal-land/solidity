(* Generated test file *)
Require Import CoqOfSolidity.CoqOfSolidity.
Require Import simulations.CoqOfSolidity.

Require test.libsolidity.semanticTests.constructor.arrays_in_constructors.Base.
Require test.libsolidity.semanticTests.constructor.arrays_in_constructors.Creator.
Require test.libsolidity.semanticTests.constructor.arrays_in_constructors.Main.

(* Calling the constructor of the last contract of the file *)
(* Last contract name: Creator *)
(* Transferred value: 0 *)
(* Arguments: "" *)
Definition constructor : M.t BlockUnit.t :=
  test.libsolidity.semanticTests.constructor.arrays_in_constructors.Creator.Creator.code.
