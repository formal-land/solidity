(* Generated test file *)
Require Import CoqOfSolidity.CoqOfSolidity.
Require Import simulations.CoqOfSolidity.

Require test.libsolidity.semanticTests.abiEncoderV2.memory_dynamic_array_and_calldata_static_array.C.

Module Constructor.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := [];
    Environment.codedata := Memory.hex_string_as_bytes "";
    Environment.address := None;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.abiEncoderV2.memory_dynamic_array_and_calldata_static_array.C.C.code.

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

(* // f(uint256[],uint256[1]): 0x40, 0xff, 1, 0xffff -> 0x20, 0x80, 0x40, 0xff, 1, 0xffff *)
Module Step1.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "e871c061000000000000000000000000000000000000000000000000000000000000004000000000000000000000000000000000000000000000000000000000000000ff0000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000ffff";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.abiEncoderV2.memory_dynamic_array_and_calldata_static_array.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Constructor.state.(State.storage)
    |>.

  Definition result_state :=
    eval_with_revert 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "00000000000000000000000000000000000000000000000000000000000000200000000000000000000000000000000000000000000000000000000000000080000000000000000000000000000000000000000000000000000000000000004000000000000000000000000000000000000000000000000000000000000000ff0000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000ffff".

  Goal Test.extract_output result state true = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step1.

(* // g(uint256[],uint256[1]): 0x40, 0xff, 1, 0xffff -> 0x20, 0x80, 0x40, 0xff, 1, 0xffff *)
Module Step2.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "599f0158000000000000000000000000000000000000000000000000000000000000004000000000000000000000000000000000000000000000000000000000000000ff0000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000ffff";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.abiEncoderV2.memory_dynamic_array_and_calldata_static_array.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step1.state.(State.storage)
    |>.

  Definition result_state :=
    eval_with_revert 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "00000000000000000000000000000000000000000000000000000000000000200000000000000000000000000000000000000000000000000000000000000080000000000000000000000000000000000000000000000000000000000000004000000000000000000000000000000000000000000000000000000000000000ff0000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000ffff".

  Goal Test.extract_output result state true = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step2.

(* // h(uint256[],uint256[1]): 0x40, 0xff, 1, 0xffff -> 0x40, 0xff, 1, 0xffff *)
Module Step3.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "5e9653b9000000000000000000000000000000000000000000000000000000000000004000000000000000000000000000000000000000000000000000000000000000ff0000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000ffff";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.abiEncoderV2.memory_dynamic_array_and_calldata_static_array.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step2.state.(State.storage)
    |>.

  Definition result_state :=
    eval_with_revert 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "000000000000000000000000000000000000000000000000000000000000004000000000000000000000000000000000000000000000000000000000000000ff0000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000ffff".

  Goal Test.extract_output result state true = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step3.
