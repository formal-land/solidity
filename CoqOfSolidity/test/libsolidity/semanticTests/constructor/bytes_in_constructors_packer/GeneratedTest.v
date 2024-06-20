(* Generated test file *)
Require Import CoqOfSolidity.CoqOfSolidity.
Require Import simulations.CoqOfSolidity.

Require test.libsolidity.semanticTests.constructor.bytes_in_constructors_packer.Base.
Require test.libsolidity.semanticTests.constructor.bytes_in_constructors_packer.Creator.
Require test.libsolidity.semanticTests.constructor.bytes_in_constructors_packer.Main.

Module Constructor.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "";
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.constructor.bytes_in_constructors_packer.Creator.Creator.code.

  Definition state : State.t :=
    snd (eval 1000 environment code Stdlib.initial_state).
End Constructor.

(* // f(uint256,bytes): 7, 0x40, 78, "abcdefghijklmnopqrstuvwxyzabcdef", "ghijklmnopqrstuvwxyzabcdefghijkl", "mnopqrstuvwxyz" -> 7, "h"
// gas irOptimized: 169292
// gas irOptimized code: 99600
// gas legacy: 172944
// gas legacy code: 239800
// gas legacyOptimized: 169818
// gas legacyOptimized code: 118600 *)
Module Step1.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "cdc9dc7900000000000000000000000000000000000000000000000000000000000000070000000000000000000000000000000000000000000000000000000000000040000000000000000000000000000000000000000000000000000000000000004e6162636465666768696a6b6c6d6e6f707172737475767778797a6162636465666768696a6b6c6d6e6f707172737475767778797a6162636465666768696a6b6c6d6e6f707172737475767778797a000000000000000000000000000000000000";
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.constructor.bytes_in_constructors_packer.Creator.Creator.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Constructor.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "00000000000000000000000000000000000000000000000000000000000000076800000000000000000000000000000000000000000000000000000000000000".

  Goal extract_output result state = Some expected_output.
  Proof.
    reflexivity.
  Qed.
End Step1.
