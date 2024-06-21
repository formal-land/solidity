(* Generated test file *)
Require Import CoqOfSolidity.CoqOfSolidity.
Require Import simulations.CoqOfSolidity.

Require test.libsolidity.semanticTests.array.fixed_arrays_as_return_type.A.
Require test.libsolidity.semanticTests.array.fixed_arrays_as_return_type.B.

Module Constructor.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := [];
    Environment.codedata := Memory.hex_string_as_bytes "";
    Environment.address := None;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.fixed_arrays_as_return_type.B.B.code.

  Definition result_state :=
    eval 1000 environment code Stdlib.initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Goal Test.is_return result = None.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Constructor.

(* // f() -> 2, 3, 4, 5, 6, 1000, 1001, 1002, 1003, 1004
// gas irOptimized: 59212
// gas irOptimized code: 56600
// gas legacy: 68001
// gas legacy code: 162000
// gas legacyOptimized: 59997
// gas legacyOptimized code: 70600 *)
Module Step1.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "26121ff0";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.fixed_arrays_as_return_type.B.B.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Constructor.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "0000000000000000000000000000000000000000000000000000000000000002000000000000000000000000000000000000000000000000000000000000000300000000000000000000000000000000000000000000000000000000000000040000000000000000000000000000000000000000000000000000000000000005000000000000000000000000000000000000000000000000000000000000000600000000000000000000000000000000000000000000000000000000000003e800000000000000000000000000000000000000000000000000000000000003e900000000000000000000000000000000000000000000000000000000000003ea00000000000000000000000000000000000000000000000000000000000003eb00000000000000000000000000000000000000000000000000000000000003ec".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step1.