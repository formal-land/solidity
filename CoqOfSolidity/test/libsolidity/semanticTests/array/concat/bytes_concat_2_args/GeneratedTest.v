(* Generated test file *)
Require Import CoqOfSolidity.CoqOfSolidity.
Require Import simulations.CoqOfSolidity.

Require test.libsolidity.semanticTests.array.concat.bytes_concat_2_args.C.

Module Constructor.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := [];
    Environment.codedata := Memory.hex_string_as_bytes "";
    Environment.address := None;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.concat.bytes_concat_2_args.C.C.code.

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

(* // f(bytes,bytes): 0x40, 0x80, 32, "abcdabcdabcdabcdabcdabcdabcdabcd", 5, "bcdef" -> 0x20, 37, "abcdabcdabcdabcdabcdabcdabcdabcd", "bcdef" *)
Module Step1.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "fa0a346f000000000000000000000000000000000000000000000000000000000000004000000000000000000000000000000000000000000000000000000000000000800000000000000000000000000000000000000000000000000000000000000020616263646162636461626364616263646162636461626364616263646162636400000000000000000000000000000000000000000000000000000000000000056263646566000000000000000000000000000000000000000000000000000000";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.concat.bytes_concat_2_args.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Constructor.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "0000000000000000000000000000000000000000000000000000000000000020000000000000000000000000000000000000000000000000000000000000002561626364616263646162636461626364616263646162636461626364616263646263646566000000000000000000000000000000000000000000000000000000".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step1.

(* // f(bytes,bytes):
// 0x40, 0xa0, 64, "abcdabcdabcdabcdabcdabcdabcdabcd", "abcdabcdabcdabcdabcdabcdabcdabcd", 5, "bcdef"
// -> 
// 0x20, 69, "abcdabcdabcdabcdabcdabcdabcdabcd", "abcdabcdabcdabcdabcdabcdabcdabcd", "bcdef" *)
Module Step2.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "fa0a346f000000000000000000000000000000000000000000000000000000000000004000000000000000000000000000000000000000000000000000000000000000a000000000000000000000000000000000000000000000000000000000000000406162636461626364616263646162636461626364616263646162636461626364616263646162636461626364616263646162636461626364616263646162636400000000000000000000000000000000000000000000000000000000000000056263646566000000000000000000000000000000000000000000000000000000";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.concat.bytes_concat_2_args.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step1.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "00000000000000000000000000000000000000000000000000000000000000200000000000000000000000000000000000000000000000000000000000000045616263646162636461626364616263646162636461626364616263646162636461626364616263646162636461626364616263646162636461626364616263646263646566000000000000000000000000000000000000000000000000000000".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step2.

(* // f(bytes,bytes): 0x40, 0x80, 3, "abc", 3, "def" -> 0x20, 6, "abcdef" *)
Module Step3.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "fa0a346f000000000000000000000000000000000000000000000000000000000000004000000000000000000000000000000000000000000000000000000000000000800000000000000000000000000000000000000000000000000000000000000003616263000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000036465660000000000000000000000000000000000000000000000000000000000";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.concat.bytes_concat_2_args.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step2.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "000000000000000000000000000000000000000000000000000000000000002000000000000000000000000000000000000000000000000000000000000000066162636465660000000000000000000000000000000000000000000000000000".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step3.

(* // f(bytes,bytes):
// 0x40, 0xa0, 34, "abcdabcdabcdabcdabcdabcdabcdabcd", "ab", 30, "cdabcdabcdabcdabcdabcdabcdabcd"
// -> 
// 0x20, 64, "abcdabcdabcdabcdabcdabcdabcdabcd", "abcdabcdabcdabcdabcdabcdabcdabcd" *)
Module Step4.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "fa0a346f000000000000000000000000000000000000000000000000000000000000004000000000000000000000000000000000000000000000000000000000000000a0000000000000000000000000000000000000000000000000000000000000002261626364616263646162636461626364616263646162636461626364616263646162000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001e6364616263646162636461626364616263646162636461626364616263640000";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.concat.bytes_concat_2_args.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step3.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "0000000000000000000000000000000000000000000000000000000000000020000000000000000000000000000000000000000000000000000000000000004061626364616263646162636461626364616263646162636461626364616263646162636461626364616263646162636461626364616263646162636461626364".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step4.

(* // f(bytes,bytes):
// 0x40, 0xa0, 34, "abcdabcdabcdabcdabcdabcdabcdabcd", "ab", 34, "cdabcdabcdabcdabcdabcdabcdabcdab", "cd"
// -> 
// 0x20, 68, "abcdabcdabcdabcdabcdabcdabcdabcd", "abcdabcdabcdabcdabcdabcdabcdabcd", "abcd" *)
Module Step5.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "fa0a346f000000000000000000000000000000000000000000000000000000000000004000000000000000000000000000000000000000000000000000000000000000a0000000000000000000000000000000000000000000000000000000000000002261626364616263646162636461626364616263646162636461626364616263646162000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002263646162636461626364616263646162636461626364616263646162636461626364000000000000000000000000000000000000000000000000000000000000";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.concat.bytes_concat_2_args.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step4.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "00000000000000000000000000000000000000000000000000000000000000200000000000000000000000000000000000000000000000000000000000000044616263646162636461626364616263646162636461626364616263646162636461626364616263646162636461626364616263646162636461626364616263646162636400000000000000000000000000000000000000000000000000000000".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step5.

(* // f(bytes,bytes):
// 0x40, 0x80, 3, "abc", 30, "dabcdabcdabcdabcdabcdabcdabcda"
// -> 
// 0x20, 33, "abcdabcdabcdabcdabcdabcdabcdabcd", "a" *)
Module Step6.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "fa0a346f0000000000000000000000000000000000000000000000000000000000000040000000000000000000000000000000000000000000000000000000000000008000000000000000000000000000000000000000000000000000000000000000036162630000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001e6461626364616263646162636461626364616263646162636461626364610000";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.concat.bytes_concat_2_args.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step5.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "0000000000000000000000000000000000000000000000000000000000000020000000000000000000000000000000000000000000000000000000000000002161626364616263646162636461626364616263646162636461626364616263646100000000000000000000000000000000000000000000000000000000000000".

  Goal Test.extract_output result state = inl expected_output.
  Proof.
    vm_compute.
    reflexivity.
  Qed.
End Step6.