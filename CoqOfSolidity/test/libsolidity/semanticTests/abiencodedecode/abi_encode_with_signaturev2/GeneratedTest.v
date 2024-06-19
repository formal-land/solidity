(* Generated test file *)
Require Import CoqOfSolidity.CoqOfSolidity.
Require Import simulations.CoqOfSolidity.

Require test.libsolidity.semanticTests.abiencodedecode.abi_encode_with_signaturev2.C.

(* Calling the constructor of the last contract of the file *)
(* Last contract name: C *)
(* Transferred value: 0 *)
(* Arguments: "" *)
Definition constructor : M.t BlockUnit.t :=
  test.libsolidity.semanticTests.abiencodedecode.abi_encode_with_signaturev2.C.C.code.
