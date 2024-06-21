(* Generated test file *)
Require Import CoqOfSolidity.CoqOfSolidity.
Require Import simulations.CoqOfSolidity.

Require test.libsolidity.semanticTests.builtinFunctions.sha256.C.

Module Constructor.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := [];
    Environment.codedata := Memory.hex_string_as_bytes "";
    Environment.address := None;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.builtinFunctions.sha256.C.C.code.

  Definition result_state :=
    eval 1000 environment code Stdlib.initial_state.

  Definition result := Eval vm_compute in fst result_state.
  Definition state := snd result_state.

  Goal Test.IsReturn result.
  Proof.
    unfold result.
    exact I.
  Qed.
End Constructor.

(* // f(int256): 4 -> 0xe38990d0c7fc009880a9c07c23842e886c6bbdc964ce6bdd5817ad357335ee6f *)
Module Step1.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "1c008df90000000000000000000000000000000000000000000000000000000000000004";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.builtinFunctions.sha256.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Constructor.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := Eval vm_compute in fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "e38990d0c7fc009880a9c07c23842e886c6bbdc964ce6bdd5817ad357335ee6f".

  Goal Test.extract_output result state = Some expected_output.
  Proof.
    unfold result.
    reflexivity.
  Qed.
End Step1.

(* // f(int256): 5 -> 0x96de8fc8c256fa1e1556d41af431cace7dca68707c78dd88c3acab8b17164c47 *)
Module Step2.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "1c008df90000000000000000000000000000000000000000000000000000000000000005";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.builtinFunctions.sha256.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step1.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := Eval vm_compute in fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "96de8fc8c256fa1e1556d41af431cace7dca68707c78dd88c3acab8b17164c47".

  Goal Test.extract_output result state = Some expected_output.
  Proof.
    unfold result.
    reflexivity.
  Qed.
End Step2.

(* // f(int256): -1 -> 0xaf9613760f72635fbdb44a5a0a63c39f12af30f950a6ee5c971be188e89c4051 *)
Module Step3.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "1c008df9ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.builtinFunctions.sha256.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step2.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := Eval vm_compute in fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "af9613760f72635fbdb44a5a0a63c39f12af30f950a6ee5c971be188e89c4051".

  Goal Test.extract_output result state = Some expected_output.
  Proof.
    unfold result.
    reflexivity.
  Qed.
End Step3.
