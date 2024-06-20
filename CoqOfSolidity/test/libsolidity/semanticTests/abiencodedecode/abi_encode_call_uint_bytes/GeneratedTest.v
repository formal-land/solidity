(* Generated test file *)
Require Import CoqOfSolidity.CoqOfSolidity.
Require Import simulations.CoqOfSolidity.

Require test.libsolidity.semanticTests.abiencodedecode.abi_encode_call_uint_bytes.C.

Module Constructor.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "";
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.abiencodedecode.abi_encode_call_uint_bytes.C.C.code.

  Definition state : State.t :=
    snd (eval 1000 environment code Stdlib.initial_state).
End Constructor.

(* // f() -> 0x20, 0x60, 0x1234000000000000000000000000000000000000000000000000000000000000, 0x6162000000000000000000000000000000000000000000000000000000000000, 0x1234000000000000000000000000000000000000000000000000000000000000 *)
Module Step1.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "26121ff0";
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.abiencodedecode.abi_encode_call_uint_bytes.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Constructor.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "00000000000000000000000000000000000000000000000000000000000000200000000000000000000000000000000000000000000000000000000000000060123400000000000000000000000000000000000000000000000000000000000061620000000000000000000000000000000000000000000000000000000000001234000000000000000000000000000000000000000000000000000000000000".

  Goal extract_output result state = Some expected_output.
  Proof.
    reflexivity.
  Qed.
End Step1.

(* // f2() -> 0x20, 0x40, 0x1234, 0x1234 *)
Module Step2.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "9942ec6f";
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.abiencodedecode.abi_encode_call_uint_bytes.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step1.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "0000000000000000000000000000000000000000000000000000000000000020000000000000000000000000000000000000000000000000000000000000004000000000000000000000000000000000000000000000000000000000000012340000000000000000000000000000000000000000000000000000000000001234".

  Goal extract_output result state = Some expected_output.
  Proof.
    reflexivity.
  Qed.
End Step2.
