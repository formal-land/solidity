(* Generated test file *)
Require Import CoqOfSolidity.CoqOfSolidity.
Require Import simulations.CoqOfSolidity.

Require test.libsolidity.semanticTests.constructor.constructor_function_argument.D.

Module Constructor.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "0fdd67305928fcac8d213d1e47bfa6165cd0b87b946644cd0000000000000000";
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.constructor.constructor_function_argument.D.D.code.

  Definition state : State.t :=
    snd (eval 1000 environment code Stdlib.initial_state).
End Constructor.
