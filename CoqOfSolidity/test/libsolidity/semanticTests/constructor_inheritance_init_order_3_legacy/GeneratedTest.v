(* Generated test file *)
Require Import CoqOfSolidity.CoqOfSolidity.
Require Import simulations.CoqOfSolidity.

Require test.libsolidity.semanticTests.constructor_inheritance_init_order_3_legacy.A.
Require test.libsolidity.semanticTests.constructor_inheritance_init_order_3_legacy.B.

Module Constructor.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "";
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.constructor_inheritance_init_order_3_legacy.B.B.code.

  Definition state : State.t :=
    snd (eval 1000 environment code Stdlib.initial_state).
End Constructor.

(* // x() -> 4 *)
Module Step1.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "0c55699c";
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.constructor_inheritance_init_order_3_legacy.B.B.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Constructor.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "0000000000000000000000000000000000000000000000000000000000000004".

  Goal extract_output result state = Some expected_output.
  Proof.
    reflexivity.
  Qed.
End Step1.
