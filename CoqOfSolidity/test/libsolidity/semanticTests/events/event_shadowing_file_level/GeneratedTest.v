(* Generated test file *)
Require Import CoqOfSolidity.CoqOfSolidity.
Require Import simulations.CoqOfSolidity.

Require test.libsolidity.semanticTests.events.event_shadowing_file_level.C.
Require test.libsolidity.semanticTests.events.event_shadowing_file_level.K.
Require test.libsolidity.semanticTests.events.event_shadowing_file_level.L1.
Require test.libsolidity.semanticTests.events.event_shadowing_file_level.L2.

Definition constructor_code : Code.t :=
  test.libsolidity.semanticTests.events.event_shadowing_file_level.C.C.code.

Definition deployed_code : Code.t :=
  test.libsolidity.semanticTests.events.event_shadowing_file_level.C.C.deployed.code.

Definition codes : list (U256.t * M.t BlockUnit.t) :=
  test.libsolidity.semanticTests.events.event_shadowing_file_level.C.codes.

Module Constructor.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := [];
    Environment.address := 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition initial_state : State.t :=
    let address := environment.(Environment.address) in
    let account := {|
      Account.balance := environment.(Environment.callvalue);
      Account.nonce := 1;
      Account.code := constructor_code.(Code.hex_name);
      Account.codedata := Memory.hex_string_as_bytes "";
      Account.storage := Memory.init;
      Account.immutables := [];
    |} in
    Stdlib.initial_state
      <| State.accounts := [(address, account)] |>
      <| State.codes := codes |>.

  Definition result_state :=
    eval_with_revert 5000 environment constructor_code.(Code.code) initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Goal Test.is_return result state = inl (Memory.u256_as_bytes deployed_code.(Code.hex_name)).
  Proof.
    vm_compute.
    reflexivity.
  Qed.

Definition final_state : State.t :=
  snd (
    eval 5000 environment (update_current_code_for_deploy deployed_code.(Code.hex_name)) state
  ).
End Constructor.

(* // main() -> 0x3e9992c940c54ea252d3a34557cc3d3014281525c43d694f89d5f3dfd820b07d, 0x3e9992c940c54ea252d3a34557cc3d3014281525c43d694f89d5f3dfd820b07d, 0x92bbf6e823a631f3c8e09b1c8df90f378fb56f7fbc9701827e1ff8aad7f6a028 *)
Module Step1.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "dffeadd0";
    Environment.address := 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition initial_state : State.t :=
    Stdlib.initial_state
      <| State.accounts := Constructor.final_state.(State.accounts) |>
      <| State.codes := Constructor.final_state.(State.codes) |>.

  Definition result_state :=
    eval_with_revert 5000 environment deployed_code.(Code.code) initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "3e9992c940c54ea252d3a34557cc3d3014281525c43d694f89d5f3dfd820b07d3e9992c940c54ea252d3a34557cc3d3014281525c43d694f89d5f3dfd820b07d92bbf6e823a631f3c8e09b1c8df90f378fb56f7fbc9701827e1ff8aad7f6a028".

  Goal Test.extract_output result state Test.Status.Success = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step1.

(* // k_main() -> 0x92bbf6e823a631f3c8e09b1c8df90f378fb56f7fbc9701827e1ff8aad7f6a028, 0x3e9992c940c54ea252d3a34557cc3d3014281525c43d694f89d5f3dfd820b07d, 0x92bbf6e823a631f3c8e09b1c8df90f378fb56f7fbc9701827e1ff8aad7f6a028 *)
Module Step2.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "f4c3fcba";
    Environment.address := 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition initial_state : State.t :=
    Stdlib.initial_state
      <| State.accounts := Step1.state.(State.accounts) |>
      <| State.codes := Step1.state.(State.codes) |>.

  Definition result_state :=
    eval_with_revert 5000 environment deployed_code.(Code.code) initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "92bbf6e823a631f3c8e09b1c8df90f378fb56f7fbc9701827e1ff8aad7f6a0283e9992c940c54ea252d3a34557cc3d3014281525c43d694f89d5f3dfd820b07d92bbf6e823a631f3c8e09b1c8df90f378fb56f7fbc9701827e1ff8aad7f6a028".

  Goal Test.extract_output result state Test.Status.Success = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step2.
