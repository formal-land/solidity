(* Generated test file *)
Require Import CoqOfSolidity.CoqOfSolidity.
Require Import simulations.CoqOfSolidity.

Require test.libsolidity.semanticTests.abiEncoderV2.calldata_array_two_static.C.

Module Constructor.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := [];
    Environment.codedata := Memory.hex_string_as_bytes "";
    Environment.address := None;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.abiEncoderV2.calldata_array_two_static.C.C.code.

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

(* // f(uint256[3],uint256[2],bool): 23, 42, 87, 51, 72, true -> 32, 96, 23, 42, 87 *)
Module Step1.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "1ef5d29a0000000000000000000000000000000000000000000000000000000000000017000000000000000000000000000000000000000000000000000000000000002a0000000000000000000000000000000000000000000000000000000000000057000000000000000000000000000000000000000000000000000000000000003300000000000000000000000000000000000000000000000000000000000000480000000000000000000000000000000000000000000000000000000000000001";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.abiEncoderV2.calldata_array_two_static.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Constructor.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "000000000000000000000000000000000000000000000000000000000000002000000000000000000000000000000000000000000000000000000000000000600000000000000000000000000000000000000000000000000000000000000017000000000000000000000000000000000000000000000000000000000000002a0000000000000000000000000000000000000000000000000000000000000057".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step1.

(* // f(uint256[3],uint256[2],bool): 23, 42, 87, 51, 72, false -> 32, 64, 51, 72 *)
Module Step2.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "1ef5d29a0000000000000000000000000000000000000000000000000000000000000017000000000000000000000000000000000000000000000000000000000000002a0000000000000000000000000000000000000000000000000000000000000057000000000000000000000000000000000000000000000000000000000000003300000000000000000000000000000000000000000000000000000000000000480000000000000000000000000000000000000000000000000000000000000000";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.abiEncoderV2.calldata_array_two_static.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step1.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "0000000000000000000000000000000000000000000000000000000000000020000000000000000000000000000000000000000000000000000000000000004000000000000000000000000000000000000000000000000000000000000000330000000000000000000000000000000000000000000000000000000000000048".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step2.

(* // g(uint256[3],uint256[2],bool): 23, 42, 87, 51, 72, true -> 32, 96, 23, 42, 87 *)
Module Step3.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "c1bd10bc0000000000000000000000000000000000000000000000000000000000000017000000000000000000000000000000000000000000000000000000000000002a0000000000000000000000000000000000000000000000000000000000000057000000000000000000000000000000000000000000000000000000000000003300000000000000000000000000000000000000000000000000000000000000480000000000000000000000000000000000000000000000000000000000000001";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.abiEncoderV2.calldata_array_two_static.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step2.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "000000000000000000000000000000000000000000000000000000000000002000000000000000000000000000000000000000000000000000000000000000600000000000000000000000000000000000000000000000000000000000000017000000000000000000000000000000000000000000000000000000000000002a0000000000000000000000000000000000000000000000000000000000000057".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step3.

(* // g(uint256[3],uint256[2],bool): 23, 42, 87, 51, 72, false -> 32, 64, 51, 72 *)
Module Step4.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "c1bd10bc0000000000000000000000000000000000000000000000000000000000000017000000000000000000000000000000000000000000000000000000000000002a0000000000000000000000000000000000000000000000000000000000000057000000000000000000000000000000000000000000000000000000000000003300000000000000000000000000000000000000000000000000000000000000480000000000000000000000000000000000000000000000000000000000000000";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.abiEncoderV2.calldata_array_two_static.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step3.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "0000000000000000000000000000000000000000000000000000000000000020000000000000000000000000000000000000000000000000000000000000004000000000000000000000000000000000000000000000000000000000000000330000000000000000000000000000000000000000000000000000000000000048".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step4.