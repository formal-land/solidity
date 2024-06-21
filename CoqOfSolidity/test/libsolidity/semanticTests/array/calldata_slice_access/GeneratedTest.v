(* Generated test file *)
Require Import CoqOfSolidity.CoqOfSolidity.
Require Import simulations.CoqOfSolidity.

Require test.libsolidity.semanticTests.array.calldata_slice_access.C.

Module Constructor.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := [];
    Environment.codedata := Memory.hex_string_as_bytes "";
    Environment.address := None;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.calldata_slice_access.C.C.code.

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

(* // f(uint256[],uint256,uint256): 0x80, 0, 0, 0, 1, 42 -> *)
Module Step1.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "2d29acb300000000000000000000000000000000000000000000000000000000000000800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000002a";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.calldata_slice_access.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Constructor.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step1.

(* // f(uint256[],uint256,uint256): 0x80, 0, 1, 0, 1, 42 -> *)
Module Step2.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "2d29acb300000000000000000000000000000000000000000000000000000000000000800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000002a";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.calldata_slice_access.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step1.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step2.

(* // f(uint256[],uint256,uint256): 0x80, 0, 2, 0, 1, 42 -> FAILURE *)
Module Step3.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "2d29acb300000000000000000000000000000000000000000000000000000000000000800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000002a";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.calldata_slice_access.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step2.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step3.

(* // f(uint256[],uint256,uint256): 0x80, 1, 0, 0, 1, 42 -> FAILURE *)
Module Step4.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "2d29acb300000000000000000000000000000000000000000000000000000000000000800000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000002a";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.calldata_slice_access.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step3.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step4.

(* // f(uint256[],uint256,uint256): 0x80, 1, 1, 0, 1, 42 -> *)
Module Step5.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "2d29acb300000000000000000000000000000000000000000000000000000000000000800000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000002a";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.calldata_slice_access.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step4.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step5.

(* // f(uint256[],uint256,uint256): 0x80, 1, 2, 0, 1, 42 -> FAILURE *)
Module Step6.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "2d29acb300000000000000000000000000000000000000000000000000000000000000800000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000002a";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.calldata_slice_access.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step5.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step6.

(* // f(uint256[],uint256,uint256): 0x80, 2, 0, 0, 1, 42 -> FAILURE *)
Module Step7.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "2d29acb300000000000000000000000000000000000000000000000000000000000000800000000000000000000000000000000000000000000000000000000000000002000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000002a";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.calldata_slice_access.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step6.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step7.

(* // f(uint256[],uint256,uint256): 0x80, 2, 1, 0, 1, 42 -> FAILURE *)
Module Step8.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "2d29acb300000000000000000000000000000000000000000000000000000000000000800000000000000000000000000000000000000000000000000000000000000002000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000002a";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.calldata_slice_access.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step7.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step8.

(* // f(uint256[],uint256,uint256): 0x80, 2, 2, 0, 1, 42 -> FAILURE *)
Module Step9.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "2d29acb300000000000000000000000000000000000000000000000000000000000000800000000000000000000000000000000000000000000000000000000000000002000000000000000000000000000000000000000000000000000000000000000200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000002a";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.calldata_slice_access.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step8.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step9.

(* // f(uint256[],uint256,uint256): 0x80, 0, 2, 1, 0, 42 -> FAILURE *)
Module Step10.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "2d29acb300000000000000000000000000000000000000000000000000000000000000800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002a";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.calldata_slice_access.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step9.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step10.

(* // f(uint256[],uint256,uint256): 0x80, 1, 2, 0, 2, 42, 23 -> *)
Module Step11.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "2d29acb300000000000000000000000000000000000000000000000000000000000000800000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000000000000000000000000000000000000000000000000000000000002a0000000000000000000000000000000000000000000000000000000000000017";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.calldata_slice_access.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step10.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step11.

(* // f(uint256[],uint256,uint256): 0x80, 1, 3, 0, 2, 42, 23 -> FAILURE *)
Module Step12.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "2d29acb300000000000000000000000000000000000000000000000000000000000000800000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000000000000000000000000000000000000000000000000000000000002a0000000000000000000000000000000000000000000000000000000000000017";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.calldata_slice_access.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step11.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step12.

(* // f(uint256[],uint256,uint256): 0x80, -1, 0, 0, 1, 42 -> FAILURE *)
Module Step13.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "2d29acb30000000000000000000000000000000000000000000000000000000000000080ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000002a";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.calldata_slice_access.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step12.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step13.

(* // f(uint256[],uint256,uint256): 0x80, -1, -1, 0, 1, 42 -> FAILURE *)
Module Step14.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "2d29acb30000000000000000000000000000000000000000000000000000000000000080ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000002a";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.calldata_slice_access.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step13.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step14.

(* // g(uint256[],uint256,uint256,uint256): 0x80, 0, 1, 0, 1, 42 -> 42, 42, 42 *)
Module Step15.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "8d83e79a00000000000000000000000000000000000000000000000000000000000000800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000002a";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.calldata_slice_access.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step14.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "000000000000000000000000000000000000000000000000000000000000002a000000000000000000000000000000000000000000000000000000000000002a000000000000000000000000000000000000000000000000000000000000002a".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step15.

(* // g(uint256[],uint256,uint256,uint256): 0x80, 0, 1, 1, 1, 42 -> FAILUREhex"4e487b71", 0x32 *)
Module Step16.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "8d83e79a00000000000000000000000000000000000000000000000000000000000000800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000002a";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.calldata_slice_access.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step15.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "4e487b710000000000000000000000000000000000000000000000000000000000000032".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step16.

(* // g(uint256[],uint256,uint256,uint256): 0x80, 0, 0, 0, 1, 42 -> FAILUREhex"4e487b71", 0x32 *)
Module Step17.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "8d83e79a00000000000000000000000000000000000000000000000000000000000000800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000002a";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.calldata_slice_access.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step16.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "4e487b710000000000000000000000000000000000000000000000000000000000000032".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step17.

(* // g(uint256[],uint256,uint256,uint256): 0x80, 1, 1, 0, 1, 42 -> FAILUREhex"4e487b71", 0x32 *)
Module Step18.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "8d83e79a00000000000000000000000000000000000000000000000000000000000000800000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000002a";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.calldata_slice_access.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step17.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "4e487b710000000000000000000000000000000000000000000000000000000000000032".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step18.

(* // g(uint256[],uint256,uint256,uint256): 0x80, 0, 5, 0, 5, 0x4201, 0x4202, 0x4203, 0x4204, 0x4205 -> 0x4201, 0x4201, 0x4201 *)
Module Step19.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "8d83e79a0000000000000000000000000000000000000000000000000000000000000080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000050000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000500000000000000000000000000000000000000000000000000000000000042010000000000000000000000000000000000000000000000000000000000004202000000000000000000000000000000000000000000000000000000000000420300000000000000000000000000000000000000000000000000000000000042040000000000000000000000000000000000000000000000000000000000004205";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.calldata_slice_access.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step18.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "000000000000000000000000000000000000000000000000000000000000420100000000000000000000000000000000000000000000000000000000000042010000000000000000000000000000000000000000000000000000000000004201".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step19.

(* // g(uint256[],uint256,uint256,uint256): 0x80, 0, 5, 4, 5, 0x4201, 0x4202, 0x4203, 0x4204, 0x4205 -> 0x4205, 0x4205, 0x4205 *)
Module Step20.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "8d83e79a0000000000000000000000000000000000000000000000000000000000000080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000050000000000000000000000000000000000000000000000000000000000000004000000000000000000000000000000000000000000000000000000000000000500000000000000000000000000000000000000000000000000000000000042010000000000000000000000000000000000000000000000000000000000004202000000000000000000000000000000000000000000000000000000000000420300000000000000000000000000000000000000000000000000000000000042040000000000000000000000000000000000000000000000000000000000004205";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.calldata_slice_access.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step19.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "000000000000000000000000000000000000000000000000000000000000420500000000000000000000000000000000000000000000000000000000000042050000000000000000000000000000000000000000000000000000000000004205".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step20.

(* // g(uint256[],uint256,uint256,uint256): 0x80, 0, 5, 5, 5, 0x4201, 0x4202, 0x4203, 0x4204, 0x4205 -> FAILUREhex"4e487b71", 0x32 *)
Module Step21.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "8d83e79a0000000000000000000000000000000000000000000000000000000000000080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000050000000000000000000000000000000000000000000000000000000000000005000000000000000000000000000000000000000000000000000000000000000500000000000000000000000000000000000000000000000000000000000042010000000000000000000000000000000000000000000000000000000000004202000000000000000000000000000000000000000000000000000000000000420300000000000000000000000000000000000000000000000000000000000042040000000000000000000000000000000000000000000000000000000000004205";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.calldata_slice_access.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step20.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "4e487b710000000000000000000000000000000000000000000000000000000000000032".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step21.

(* // g(uint256[],uint256,uint256,uint256): 0x80, 1, 5, 0, 5, 0x4201, 0x4202, 0x4203, 0x4204, 0x4205 -> 0x4202, 0x4202, 0x4202 *)
Module Step22.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "8d83e79a0000000000000000000000000000000000000000000000000000000000000080000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000050000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000500000000000000000000000000000000000000000000000000000000000042010000000000000000000000000000000000000000000000000000000000004202000000000000000000000000000000000000000000000000000000000000420300000000000000000000000000000000000000000000000000000000000042040000000000000000000000000000000000000000000000000000000000004205";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.calldata_slice_access.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step21.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "000000000000000000000000000000000000000000000000000000000000420200000000000000000000000000000000000000000000000000000000000042020000000000000000000000000000000000000000000000000000000000004202".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step22.

(* // g(uint256[],uint256,uint256,uint256): 0x80, 1, 5, 3, 5, 0x4201, 0x4202, 0x4203, 0x4204, 0x4205 -> 0x4205, 0x4205, 0x4205 *)
Module Step23.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "8d83e79a0000000000000000000000000000000000000000000000000000000000000080000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000050000000000000000000000000000000000000000000000000000000000000003000000000000000000000000000000000000000000000000000000000000000500000000000000000000000000000000000000000000000000000000000042010000000000000000000000000000000000000000000000000000000000004202000000000000000000000000000000000000000000000000000000000000420300000000000000000000000000000000000000000000000000000000000042040000000000000000000000000000000000000000000000000000000000004205";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.calldata_slice_access.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step22.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "000000000000000000000000000000000000000000000000000000000000420500000000000000000000000000000000000000000000000000000000000042050000000000000000000000000000000000000000000000000000000000004205".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step23.

(* // g(uint256[],uint256,uint256,uint256): 0x80, 1, 5, 4, 5, 0x4201, 0x4202, 0x4203, 0x4204, 0x4205 -> FAILUREhex"4e487b71", 0x32 *)
Module Step24.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "8d83e79a0000000000000000000000000000000000000000000000000000000000000080000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000050000000000000000000000000000000000000000000000000000000000000004000000000000000000000000000000000000000000000000000000000000000500000000000000000000000000000000000000000000000000000000000042010000000000000000000000000000000000000000000000000000000000004202000000000000000000000000000000000000000000000000000000000000420300000000000000000000000000000000000000000000000000000000000042040000000000000000000000000000000000000000000000000000000000004205";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.calldata_slice_access.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step23.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "4e487b710000000000000000000000000000000000000000000000000000000000000032".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step24.

(* // g(uint256[],uint256,uint256,uint256): 0x80, 4, 5, 0, 5, 0x4201, 0x4202, 0x4203, 0x4204, 0x4205 -> 0x4205, 0x4205, 0x4205 *)
Module Step25.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "8d83e79a0000000000000000000000000000000000000000000000000000000000000080000000000000000000000000000000000000000000000000000000000000000400000000000000000000000000000000000000000000000000000000000000050000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000500000000000000000000000000000000000000000000000000000000000042010000000000000000000000000000000000000000000000000000000000004202000000000000000000000000000000000000000000000000000000000000420300000000000000000000000000000000000000000000000000000000000042040000000000000000000000000000000000000000000000000000000000004205";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.calldata_slice_access.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step24.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "000000000000000000000000000000000000000000000000000000000000420500000000000000000000000000000000000000000000000000000000000042050000000000000000000000000000000000000000000000000000000000004205".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step25.

(* // g(uint256[],uint256,uint256,uint256): 0x80, 4, 5, 1, 5, 0x4201, 0x4202, 0x4203, 0x4204, 0x4205 -> FAILUREhex"4e487b71", 0x32 *)
Module Step26.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "8d83e79a0000000000000000000000000000000000000000000000000000000000000080000000000000000000000000000000000000000000000000000000000000000400000000000000000000000000000000000000000000000000000000000000050000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000500000000000000000000000000000000000000000000000000000000000042010000000000000000000000000000000000000000000000000000000000004202000000000000000000000000000000000000000000000000000000000000420300000000000000000000000000000000000000000000000000000000000042040000000000000000000000000000000000000000000000000000000000004205";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.calldata_slice_access.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step25.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "4e487b710000000000000000000000000000000000000000000000000000000000000032".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step26.

(* // g(uint256[],uint256,uint256,uint256): 0x80, 5, 5, 0, 5, 0x4201, 0x4202, 0x4203, 0x4204, 0x4205 -> FAILUREhex"4e487b71", 0x32 *)
Module Step27.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "8d83e79a0000000000000000000000000000000000000000000000000000000000000080000000000000000000000000000000000000000000000000000000000000000500000000000000000000000000000000000000000000000000000000000000050000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000500000000000000000000000000000000000000000000000000000000000042010000000000000000000000000000000000000000000000000000000000004202000000000000000000000000000000000000000000000000000000000000420300000000000000000000000000000000000000000000000000000000000042040000000000000000000000000000000000000000000000000000000000004205";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.calldata_slice_access.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step26.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "4e487b710000000000000000000000000000000000000000000000000000000000000032".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step27.

(* // g(uint256[],uint256,uint256,uint256): 0x80, 0, 1, 0, 5, 0x4201, 0x4202, 0x4203, 0x4204, 0x4205 -> 0x4201, 0x4201, 0x4201 *)
Module Step28.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "8d83e79a0000000000000000000000000000000000000000000000000000000000000080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000500000000000000000000000000000000000000000000000000000000000042010000000000000000000000000000000000000000000000000000000000004202000000000000000000000000000000000000000000000000000000000000420300000000000000000000000000000000000000000000000000000000000042040000000000000000000000000000000000000000000000000000000000004205";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.calldata_slice_access.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step27.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "000000000000000000000000000000000000000000000000000000000000420100000000000000000000000000000000000000000000000000000000000042010000000000000000000000000000000000000000000000000000000000004201".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step28.

(* // g(uint256[],uint256,uint256,uint256): 0x80, 0, 1, 1, 5, 0x4201, 0x4202, 0x4203, 0x4204, 0x4205 -> FAILUREhex"4e487b71", 0x32 *)
Module Step29.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "8d83e79a0000000000000000000000000000000000000000000000000000000000000080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000500000000000000000000000000000000000000000000000000000000000042010000000000000000000000000000000000000000000000000000000000004202000000000000000000000000000000000000000000000000000000000000420300000000000000000000000000000000000000000000000000000000000042040000000000000000000000000000000000000000000000000000000000004205";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.calldata_slice_access.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step28.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "4e487b710000000000000000000000000000000000000000000000000000000000000032".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step29.

(* // g(uint256[],uint256,uint256,uint256): 0x80, 0, 1, 0, 5, 0x4201, 0x4202, 0x4203, 0x4204, 0x4205 -> 0x4201, 0x4201, 0x4201 *)
Module Step30.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "8d83e79a0000000000000000000000000000000000000000000000000000000000000080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000500000000000000000000000000000000000000000000000000000000000042010000000000000000000000000000000000000000000000000000000000004202000000000000000000000000000000000000000000000000000000000000420300000000000000000000000000000000000000000000000000000000000042040000000000000000000000000000000000000000000000000000000000004205";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.calldata_slice_access.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step29.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "000000000000000000000000000000000000000000000000000000000000420100000000000000000000000000000000000000000000000000000000000042010000000000000000000000000000000000000000000000000000000000004201".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step30.

(* // g(uint256[],uint256,uint256,uint256): 0x80, 0, 1, 1, 5, 0x4201, 0x4202, 0x4203, 0x4204, 0x4205 -> FAILUREhex"4e487b71", 0x32 *)
Module Step31.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "8d83e79a0000000000000000000000000000000000000000000000000000000000000080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000500000000000000000000000000000000000000000000000000000000000042010000000000000000000000000000000000000000000000000000000000004202000000000000000000000000000000000000000000000000000000000000420300000000000000000000000000000000000000000000000000000000000042040000000000000000000000000000000000000000000000000000000000004205";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.calldata_slice_access.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step30.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "4e487b710000000000000000000000000000000000000000000000000000000000000032".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step31.

(* // g(uint256[],uint256,uint256,uint256): 0x80, 1, 2, 0, 5, 0x4201, 0x4202, 0x4203, 0x4204, 0x4205 -> 0x4202, 0x4202, 0x4202 *)
Module Step32.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "8d83e79a0000000000000000000000000000000000000000000000000000000000000080000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000020000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000500000000000000000000000000000000000000000000000000000000000042010000000000000000000000000000000000000000000000000000000000004202000000000000000000000000000000000000000000000000000000000000420300000000000000000000000000000000000000000000000000000000000042040000000000000000000000000000000000000000000000000000000000004205";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.calldata_slice_access.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step31.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "000000000000000000000000000000000000000000000000000000000000420200000000000000000000000000000000000000000000000000000000000042020000000000000000000000000000000000000000000000000000000000004202".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step32.

(* // g(uint256[],uint256,uint256,uint256): 0x80, 1, 2, 1, 5, 0x4201, 0x4202, 0x4203, 0x4204, 0x4205 -> FAILUREhex"4e487b71", 0x32 *)
Module Step33.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "8d83e79a0000000000000000000000000000000000000000000000000000000000000080000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000020000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000500000000000000000000000000000000000000000000000000000000000042010000000000000000000000000000000000000000000000000000000000004202000000000000000000000000000000000000000000000000000000000000420300000000000000000000000000000000000000000000000000000000000042040000000000000000000000000000000000000000000000000000000000004205";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.calldata_slice_access.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step32.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "4e487b710000000000000000000000000000000000000000000000000000000000000032".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step33.

(* // g(uint256[],uint256,uint256,uint256): 0x80, 4, 5, 0, 5, 0x4201, 0x4202, 0x4203, 0x4204, 0x4205 -> 0x4205, 0x4205, 0x4205 *)
Module Step34.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "8d83e79a0000000000000000000000000000000000000000000000000000000000000080000000000000000000000000000000000000000000000000000000000000000400000000000000000000000000000000000000000000000000000000000000050000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000500000000000000000000000000000000000000000000000000000000000042010000000000000000000000000000000000000000000000000000000000004202000000000000000000000000000000000000000000000000000000000000420300000000000000000000000000000000000000000000000000000000000042040000000000000000000000000000000000000000000000000000000000004205";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.calldata_slice_access.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step33.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "000000000000000000000000000000000000000000000000000000000000420500000000000000000000000000000000000000000000000000000000000042050000000000000000000000000000000000000000000000000000000000004205".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step34.

(* // g(uint256[],uint256,uint256,uint256): 0x80, 4, 5, 1, 5, 0x4201, 0x4202, 0x4203, 0x4204, 0x4205 -> FAILUREhex"4e487b71", 0x32 *)
Module Step35.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "8d83e79a0000000000000000000000000000000000000000000000000000000000000080000000000000000000000000000000000000000000000000000000000000000400000000000000000000000000000000000000000000000000000000000000050000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000500000000000000000000000000000000000000000000000000000000000042010000000000000000000000000000000000000000000000000000000000004202000000000000000000000000000000000000000000000000000000000000420300000000000000000000000000000000000000000000000000000000000042040000000000000000000000000000000000000000000000000000000000004205";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.calldata_slice_access.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step34.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "4e487b710000000000000000000000000000000000000000000000000000000000000032".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step35.
