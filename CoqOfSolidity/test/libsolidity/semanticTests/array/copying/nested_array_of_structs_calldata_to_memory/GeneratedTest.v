(* Generated test file *)
Require Import CoqOfSolidity.CoqOfSolidity.
Require Import simulations.CoqOfSolidity.

Require test.libsolidity.semanticTests.array.copying.nested_array_of_structs_calldata_to_memory.C.

Definition constructor_code : Code.t :=
  test.libsolidity.semanticTests.array.copying.nested_array_of_structs_calldata_to_memory.C.C.code.

Definition deployed_code : Code.t :=
  test.libsolidity.semanticTests.array.copying.nested_array_of_structs_calldata_to_memory.C.C.deployed.code.

Definition codes : list (U256.t * M.t BlockUnit.t) :=
  test.libsolidity.semanticTests.array.copying.nested_array_of_structs_calldata_to_memory.C.codes.

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
End Constructor.

(* // test1((uint8,uint8)[1][2]): 1, 2, 3, 4 -> 1, 2, 3, 4 *)
Module Step1.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "16fa1d340000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000200000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000000000000000000000000000000000000004";
    Environment.address := 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition initial_state : State.t :=
    Stdlib.initial_state
      <| State.accounts := Constructor.state.(State.accounts) |>
      <| State.codes := Constructor.state.(State.codes) |>.

  Definition code : M.t BlockUnit.t :=
    do* update_current_code_for_deploy deployed_code.(Code.hex_name) in
    deployed_code.(Code.code).

  Definition result_state :=
    eval_with_revert 5000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "0000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000200000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000000000000000000000000000000000000004".

  Goal Test.extract_output result state Test.Status.Success = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step1.

(* // test2((uint8,uint8)[1][]): 0x20, 3, 7, 11, 13, 17, 19, 23 -> 0x20, 3, 7, 11, 13, 17, 19, 23 *)
Module Step2.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "7b0eaa57000000000000000000000000000000000000000000000000000000000000002000000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000000000000000000000000000000000000007000000000000000000000000000000000000000000000000000000000000000b000000000000000000000000000000000000000000000000000000000000000d000000000000000000000000000000000000000000000000000000000000001100000000000000000000000000000000000000000000000000000000000000130000000000000000000000000000000000000000000000000000000000000017";
    Environment.address := 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition initial_state : State.t :=
    Stdlib.initial_state
      <| State.accounts := Step1.state.(State.accounts) |>
      <| State.codes := Step1.state.(State.codes) |>.

  Definition code : M.t BlockUnit.t :=
    deployed_code.(Code.code).

  Definition result_state :=
    eval_with_revert 5000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "000000000000000000000000000000000000000000000000000000000000002000000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000000000000000000000000000000000000007000000000000000000000000000000000000000000000000000000000000000b000000000000000000000000000000000000000000000000000000000000000d000000000000000000000000000000000000000000000000000000000000001100000000000000000000000000000000000000000000000000000000000000130000000000000000000000000000000000000000000000000000000000000017".

  Goal Test.extract_output result state Test.Status.Success = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step2.

(* // test3((uint8,uint8)[][2]): 0x20, 0x40, 0xa0, 1, 3, 7, 2, 11, 13, 17, 19 -> 0x20, 0x40, 0xa0, 1, 3, 7, 2, 11, 13, 17, 19 *)
Module Step3.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "2e7b25580000000000000000000000000000000000000000000000000000000000000020000000000000000000000000000000000000000000000000000000000000004000000000000000000000000000000000000000000000000000000000000000a00000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000300000000000000000000000000000000000000000000000000000000000000070000000000000000000000000000000000000000000000000000000000000002000000000000000000000000000000000000000000000000000000000000000b000000000000000000000000000000000000000000000000000000000000000d00000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000000000000000000000000000000000000013";
    Environment.address := 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition initial_state : State.t :=
    Stdlib.initial_state
      <| State.accounts := Step2.state.(State.accounts) |>
      <| State.codes := Step2.state.(State.codes) |>.

  Definition code : M.t BlockUnit.t :=
    deployed_code.(Code.code).

  Definition result_state :=
    eval_with_revert 5000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "0000000000000000000000000000000000000000000000000000000000000020000000000000000000000000000000000000000000000000000000000000004000000000000000000000000000000000000000000000000000000000000000a00000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000300000000000000000000000000000000000000000000000000000000000000070000000000000000000000000000000000000000000000000000000000000002000000000000000000000000000000000000000000000000000000000000000b000000000000000000000000000000000000000000000000000000000000000d00000000000000000000000000000000000000000000000000000000000000110000000000000000000000000000000000000000000000000000000000000013".

  Goal Test.extract_output result state Test.Status.Success = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step3.
