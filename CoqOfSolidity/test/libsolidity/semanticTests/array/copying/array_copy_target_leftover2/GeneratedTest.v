(* Generated test file *)
Require Import CoqOfSolidity.CoqOfSolidity.
Require Import simulations.CoqOfSolidity.

Require test.libsolidity.semanticTests.array.copying.array_copy_target_leftover2.c.

Definition constructor_code : Code.t :=
  test.libsolidity.semanticTests.array.copying.array_copy_target_leftover2.c.c.code.

Definition deployed_code : Code.t :=
  test.libsolidity.semanticTests.array.copying.array_copy_target_leftover2.c.c.deployed.code.

Definition codes : list (U256.t * M.t BlockUnit.t) :=
  test.libsolidity.semanticTests.array.copying.array_copy_target_leftover2.c.codes.

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

(* // test() -> 0x04000000000000000000000000000000000000000000000000, 0x0, 0x0
// gas irOptimized: 93858
// gas legacy: 97451
// gas legacyOptimized: 94200 *)
Module Step1.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "f8a8fd6d";
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
    Memory.hex_string_as_bytes "000000000000000400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000".

  Goal Test.extract_output result state Test.Status.Success = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step1.
