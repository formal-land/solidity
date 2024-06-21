(* Generated test file *)
Require Import CoqOfSolidity.CoqOfSolidity.
Require Import simulations.CoqOfSolidity.

Require test.libsolidity.semanticTests.array.copying.array_copy_target_leftover.c.

Module Constructor.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := [];
    Environment.codedata := Memory.hex_string_as_bytes "";
    Environment.address := None;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.copying.array_copy_target_leftover.c.c.code.

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

(* // test() -> 0xffffffff, 0x0000000000000000000000000a00090008000700060005000400030002000100, 0x0000000000000000000000000000000000000000000000000000000000000000
// gas irOptimized: 100495
// gas legacy: 158142
// gas legacyOptimized: 141020 *)
Module Step1.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "f8a8fd6d";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.copying.array_copy_target_leftover.c.c.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Constructor.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "00000000000000000000000000000000000000000000000000000000ffffffff0000000000000000000000000a000900080007000600050004000300020001000000000000000000000000000000000000000000000000000000000000000000".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step1.
