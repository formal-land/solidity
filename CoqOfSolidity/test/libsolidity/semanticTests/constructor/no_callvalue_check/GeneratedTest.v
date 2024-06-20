(* Generated test file *)
Require Import CoqOfSolidity.CoqOfSolidity.
Require Import simulations.CoqOfSolidity.

Require test.libsolidity.semanticTests.constructor.no_callvalue_check.A1.
Require test.libsolidity.semanticTests.constructor.no_callvalue_check.A2.
Require test.libsolidity.semanticTests.constructor.no_callvalue_check.B1.
Require test.libsolidity.semanticTests.constructor.no_callvalue_check.B2.
Require test.libsolidity.semanticTests.constructor.no_callvalue_check.B3.
Require test.libsolidity.semanticTests.constructor.no_callvalue_check.C.

Module Constructor.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "";
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.constructor.no_callvalue_check.C.C.code.

  Definition state : State.t :=
    snd (eval 1000 environment code Stdlib.initial_state).
End Constructor.

(* // f(), 2000 ether -> true
// gas irOptimized: 117623
// gas irOptimized code: 1800
// gas legacy: 117821
// gas legacy code: 4800
// gas legacyOptimized: 117690
// gas legacyOptimized code: 4800 *)
Module Step1.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 2000000000000000000000;
    Environment.calldata := Memory.hex_string_as_bytes "26121ff0";
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.constructor.no_callvalue_check.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Constructor.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "0000000000000000000000000000000000000000000000000000000000000001".

  Goal extract_output result state = Some expected_output.
  Proof.
    reflexivity.
  Qed.
End Step1.
