(* Generated test file *)
Require Import CoqOfSolidity.CoqOfSolidity.
Require Import simulations.CoqOfSolidity.

Require test.libsolidity.semanticTests.array.reusing_memory.Helper.
Require test.libsolidity.semanticTests.array.reusing_memory.Main.

Module Constructor.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := [];
    Environment.codedata := Memory.hex_string_as_bytes "";
    Environment.address := None;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.reusing_memory.Main.Main.code.

  Definition result_state :=
    eval_with_revert 1000 environment code Stdlib.initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Goal Test.is_return result = None.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Constructor.

(* // f(uint256): 0x34 -> 0x46bddb1178e94d7f2892ff5f366840eb658911794f2c3a44c450aa2c505186c1
// gas irOptimized: 99552
// gas irOptimized code: 12400
// gas legacy: 101554
// gas legacy code: 23600
// gas legacyOptimized: 99612
// gas legacyOptimized code: 13400 *)
Module Step1.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "b3de648b0000000000000000000000000000000000000000000000000000000000000034";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.reusing_memory.Main.Main.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Constructor.state.(State.storage)
    |>.

  Definition result_state :=
    eval_with_revert 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "46bddb1178e94d7f2892ff5f366840eb658911794f2c3a44c450aa2c505186c1".

  Goal Test.extract_output result state true = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step1.
