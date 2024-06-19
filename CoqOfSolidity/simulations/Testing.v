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

    Definition output1 : _ * State.t :=
      eval 200 environemnt1 abi_decode_calldata.C.C_21.C_21_deployed.code Stdlib.init_state.

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
  End abi_decode_calldata.

  Module abi_decode_simple.
    Require test.libsolidity.semanticTests.abiencodedecode.abi_decode_simple.C.

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

    Definition output1 : _ * State.t :=
      eval 200 environemnt1 abi_decode_simple.C.C_21.C_21_deployed.code Stdlib.init_state.

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
        (List.seq 352 128).
    Compute memory.
  End abi_decode_simple.

  Module abi_decode_simple_storage.
    Require test.libsolidity.semanticTests.abiencodedecode.abi_decode_simple_storage.C.

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

    Definition output1 : _ * State.t :=
      eval 200 environemnt1 abi_decode_simple_storage.C.C_27.C_27_deployed.code Stdlib.init_state.

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
        (List.seq 512 128).
    Compute memory.
  End abi_decode_simple_storage.

  Module abi_encode_call.
    Require test.libsolidity.semanticTests.abiencodedecode.abi_encode_call.C.

    Module Selectors.
      Definition callExternal : list Z := [0x5f; 0x43; 0x19; 0x92].
    End Selectors.

    Definition environemnt1 : Environment.t :=
      environment <|
        Environment.calldata := Selectors.callExternal
      |>.

    Definition output1 : _ * State.t :=
      eval 400 environemnt1 abi_encode_call.C.C_241.C_241_deployed.code Stdlib.init_state.

    Compute "result".
    Compute fst output1.
End abiencodedecode.
