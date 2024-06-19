(* Generated test file *)
Require Import CoqOfSolidity.CoqOfSolidity.
Require Import simulations.CoqOfSolidity.

Require test.libsolidity.semanticTests.constructor.bytes_in_constructors_packer.Base.
Require test.libsolidity.semanticTests.constructor.bytes_in_constructors_packer.Creator.
Require test.libsolidity.semanticTests.constructor.bytes_in_constructors_packer.Main.

(* Calling the constructor of the last contract of the file *)
(* Last contract name: Creator *)
(* Transferred value: 0 *)
(* Arguments: "" *)
Definition constructor : M.t BlockUnit.t :=
  test.libsolidity.semanticTests.constructor.bytes_in_constructors_packer.Creator.Creator.code.
