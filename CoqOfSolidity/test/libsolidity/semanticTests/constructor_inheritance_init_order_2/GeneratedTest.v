(* Generated test file *)
Require Import CoqOfSolidity.CoqOfSolidity.
Require Import simulations.CoqOfSolidity.

Require test.libsolidity.semanticTests.constructor_inheritance_init_order_2.A.
Require test.libsolidity.semanticTests.constructor_inheritance_init_order_2.B.

Module Constructor.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "";
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.constructor_inheritance_init_order_2.B.B.code.

  Definition state : State.t :=
    snd (eval 1000 environment code Stdlib.initial_state).
End Constructor.

(* // y() -> 42 *)
Module Step1.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "a56dfe4a";
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.constructor_inheritance_init_order_2.B.B.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Constructor.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "000000000000000000000000000000000000000000000000000000000000002a".

  Goal extract_output result state = Some expected_output.
  Proof.
    reflexivity.
  Qed.
End Step1.
