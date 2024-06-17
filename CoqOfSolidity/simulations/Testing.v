Require Import CoqOfSolidity.CoqOfSolidity.
Require Import simulations.CoqOfSolidity.

Import Run.

Definition environment : Environment.t := {|
  Environment.caller := 123;
  Environment.callvalue := 0;
  Environment.calldata := [];
|}.

Module abiencodedecode.
  Module abi_decode_calldata.
    Require test.libsolidity.semanticTests.abiencodedecode.abi_decode_calldata.C.

    Module Selectors.
      Definition f : list Z := [0xd4; 0x57; 0x54; 0xf8].
    End Selectors.

    (* f(bytes): 0x20, 0x80, 0x21, 0x40, 0x7, "abcdefg" -> 0x21, 0x40, 0x7, "abcdefg" *)

    Compute Memory.u256_as_bytes 0x20.

    Definition environemnt1 : Environment.t :=
      environment <|
        Environment.calldata :=
          Selectors.f ++
          Memory.u256_as_bytes 0x20 ++
          Memory.u256_as_bytes 0x80 ++
          Memory.u256_as_bytes 0x21 ++
          Memory.u256_as_bytes 0x40 ++
          Memory.u256_as_bytes 0x7 ++
          Memory.u256_as_bytes 0x6162636465666700000000000000000000000000000000000000000000000000
      |>.

    Compute List.length environemnt1.(Environment.calldata).

    Definition output1 : _ * State.t :=
      eval 200 environemnt1 Stdlib.init_state abi_decode_calldata.C.C_21.C_21_deployed.code.

    Compute "result".
    Compute fst output1.

    Compute "declared_vars".
    Compute declared_vars (snd output1).

    Compute "call_stack".
    Compute (snd output1).(State.call_stack).

    Compute "memory".
    Definition memory : list Z :=
      List.map
        (fun (i : nat) => (snd output1).(State.memory) (Z.of_nat i))
        (* The following values are taken from the result *)
        (List.seq 192 128).

    Compute memory.
    Compute environemnt1.
  End abi_decode_calldata.
End abiencodedecode.
