(* Generated test file *)
Require Import CoqOfSolidity.CoqOfSolidity.
Require Import simulations.CoqOfSolidity.

Require test.libsolidity.semanticTests.array.copying.storage_memory_nested_bytes.C.

Module Constructor.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := [];
    Environment.codedata := Memory.hex_string_as_bytes "";
    Environment.address := None;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.copying.storage_memory_nested_bytes.C.C.code.

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

(* // f() -> 0x20, 0x02, 0x40, 0x80, 3, 0x6162630000000000000000000000000000000000000000000000000000000000, 0x99, 44048183304486788312148433451363384677562265908331949128489393215789685032262, 32241931068525137014058842823026578386641954854143559838526554899205067598957, 49951309422467613961193228765530489307475214998374779756599339590522149884499, 0x54555658595a6162636465666768696a6b6c6d6e6f707172737475767778797a, 0x4142434445464748494a4b4c4d4e4f5051525354555658595a00000000000000
// gas irOptimized: 202083
// gas legacy: 204328
// gas legacyOptimized: 202900 *)
Module Step1.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "26121ff0";
    Environment.codedata := [];
    Environment.address := Some 0xc06afe3a8444fc0004668591e8306bfb9968e79e;
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.array.copying.storage_memory_nested_bytes.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Constructor.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := Eval vm_compute in fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "00000000000000000000000000000000000000000000000000000000000000200000000000000000000000000000000000000000000000000000000000000002000000000000000000000000000000000000000000000000000000000000004000000000000000000000000000000000000000000000000000000000000000800000000000000000000000000000000000000000000000000000000000000003616263000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000996162636465666768696a6b6c6d6e6f707172737475767778797a4142434445464748494a4b4c4d4e4f5051525354555658595a6162636465666768696a6b6c6d6e6f707172737475767778797a4142434445464748494a4b4c4d4e4f5051525354555658595a6162636465666768696a6b6c6d6e6f707172737475767778797a4142434445464748494a4b4c4d4e4f5051525354555658595a00000000000000".

  Goal Test.extract_output result state = Some expected_output.
  Proof.
    unfold result.
    reflexivity.
  Qed.
End Step1.
