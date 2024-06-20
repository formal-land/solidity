(* Generated test file *)
Require Import CoqOfSolidity.CoqOfSolidity.
Require Import simulations.CoqOfSolidity.

Require test.libsolidity.semanticTests.abiencodedecode.abi_encode_call_is_consistent.C.

Module Constructor.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "";
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.abiencodedecode.abi_encode_call_is_consistent.C.C.code.

  Definition state : State.t :=
    snd (eval 1000 environment code Stdlib.initial_state).
End Constructor.

(* // assertConsistentSelectors() -> *)
Module Step1.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "3d3df1f1";
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.abiencodedecode.abi_encode_call_is_consistent.C.C.deployed.code.

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

  Goal extract_output result state = Some expected_output.
  Proof.
    reflexivity.
  Qed.
End Step1.

(* // fSignatureFromLiteral() -> 0x20, 0x84, 23450202028776381066253055403048136312616272755117076566855971503345107992576, 26959946667150639794667015087019630673637144422540572481103610249216, 1725436586697640946858688965569256363112777243042596638790631055949824, 86060793054017993816230018372407419485142305772921726565498526629888, 0 *)
Module Step2.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "bc010e47";
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.abiencodedecode.abi_encode_call_is_consistent.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step1.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "0000000000000000000000000000000000000000000000000000000000000020000000000000000000000000000000000000000000000000000000000000008433d85810000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000400000000000000000000000000000000000000000000000000000000000000003313233000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000".

  Goal extract_output result state = Some expected_output.
  Proof.
    reflexivity.
  Qed.
End Step2.

(* // fSignatureFromLiteralCall() -> 0x20, 0x84, 23450202028776381066253055403048136312616272755117076566855971503345107992576, 26959946667150639794667015087019630673637144422540572481103610249216, 1725436586697640946858688965569256363112777243042596638790631055949824, 86060793054017993816230018372407419485142305772921726565498526629888, 0 *)
Module Step3.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "5480443f";
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.abiencodedecode.abi_encode_call_is_consistent.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step2.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "0000000000000000000000000000000000000000000000000000000000000020000000000000000000000000000000000000000000000000000000000000008433d85810000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000400000000000000000000000000000000000000000000000000000000000000003313233000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000".

  Goal extract_output result state = Some expected_output.
  Proof.
    reflexivity.
  Qed.
End Step3.

(* // fSignatureFromMemory() -> 0x20, 0x84, 23450202028776381066253055403048136312616272755117076566855971503345107992576, 26959946667150639794667015087019630673637144422540572481103610249216, 1725436586697640946858688965569256363112777243042596638790631055949824, 86060793054017993816230018372407419485142305772921726565498526629888, 0 *)
Module Step4.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "9928aa5c";
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.abiencodedecode.abi_encode_call_is_consistent.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step3.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "0000000000000000000000000000000000000000000000000000000000000020000000000000000000000000000000000000000000000000000000000000008433d85810000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000400000000000000000000000000000000000000000000000000000000000000003313233000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000".

  Goal extract_output result state = Some expected_output.
  Proof.
    reflexivity.
  Qed.
End Step4.

(* // fSignatureFromMemoryCall() -> 0x20, 0x84, 23450202028776381066253055403048136312616272755117076566855971503345107992576, 26959946667150639794667015087019630673637144422540572481103610249216, 1725436586697640946858688965569256363112777243042596638790631055949824, 86060793054017993816230018372407419485142305772921726565498526629888, 0 *)
Module Step5.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "3576719d";
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.abiencodedecode.abi_encode_call_is_consistent.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step4.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "0000000000000000000000000000000000000000000000000000000000000020000000000000000000000000000000000000000000000000000000000000008433d85810000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000400000000000000000000000000000000000000000000000000000000000000003313233000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000".

  Goal extract_output result state = Some expected_output.
  Proof.
    reflexivity.
  Qed.
End Step5.

(* // fSignatureFromMemorys() -> 0x20, 0x84, 23450202028776381066253055403048136312616272755117076566855971503345107992576, 26959946667150639794667015087019630673637144422540572481103610249216, 1725436586697640946858688965569256363112777243042596638790631055949824, 86060793054017993816230018372407419485142305772921726565498526629888, 0 *)
Module Step6.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "e4b36a00";
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.abiencodedecode.abi_encode_call_is_consistent.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step5.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "0000000000000000000000000000000000000000000000000000000000000020000000000000000000000000000000000000000000000000000000000000008433d85810000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000400000000000000000000000000000000000000000000000000000000000000003313233000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000".

  Goal extract_output result state = Some expected_output.
  Proof.
    reflexivity.
  Qed.
End Step6.

(* // fPointerCall() -> 0x20, 0x84, 23450202028776381066253055403048136312616272755117076566855971503345107992576, 26959946667150639794667015087019630673637144422540572481103610249216, 1725436586697640946858688965569256363112777243042596638790631055949824, 86060793054017993816230018372407419485142305772921726565498526629888, 0 *)
Module Step7.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "2c2e3816";
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.abiencodedecode.abi_encode_call_is_consistent.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step6.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "0000000000000000000000000000000000000000000000000000000000000020000000000000000000000000000000000000000000000000000000000000008433d85810000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000400000000000000000000000000000000000000000000000000000000000000003313233000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000".

  Goal extract_output result state = Some expected_output.
  Proof.
    reflexivity.
  Qed.
End Step7.

(* // fLocalPointerCall() -> 0x20, 0x84, 23450202028776381066253055403048136312616272755117076566855971503345107992576, 26959946667150639794667015087019630673637144422540572481103610249216, 1725436586697640946858688965569256363112777243042596638790631055949824, 86060793054017993816230018372407419485142305772921726565498526629888, 0 *)
Module Step8.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "d490318a";
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.abiencodedecode.abi_encode_call_is_consistent.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step7.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "0000000000000000000000000000000000000000000000000000000000000020000000000000000000000000000000000000000000000000000000000000008433d85810000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000400000000000000000000000000000000000000000000000000000000000000003313233000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000".

  Goal extract_output result state = Some expected_output.
  Proof.
    reflexivity.
  Qed.
End Step8.

(* // fReturnedFunctionPointer() -> 0x20, 0x84, 23450202028776381066253055403048136312616272755117076566855971503345107992576, 26959946667150639794667015087019630673637144422540572481103610249216, 1725436586697640946858688965569256363112777243042596638790631055949824, 86060793054017993816230018372407419485142305772921726565498526629888, 0 *)
Module Step9.
  Definition environment : Environment.t :={|
    Environment.caller := 0x1212121212121212121212121212120000000012;
    Environment.callvalue := 0;
    Environment.calldata := Memory.hex_string_as_bytes "c627918f";
  |}.

  Definition code : M.t BlockUnit.t :=
    test.libsolidity.semanticTests.abiencodedecode.abi_encode_call_is_consistent.C.C.deployed.code.

  Definition initial_state : State.t :=
    Stdlib.initial_state <|
      State.storage := Step8.state.(State.storage)
    |>.

  Definition result_state :=
    eval 1000 environment code initial_state.

  Definition result := fst result_state.
  Definition state := snd result_state.

  Definition expected_output : list Z :=
    Memory.hex_string_as_bytes "0000000000000000000000000000000000000000000000000000000000000020000000000000000000000000000000000000000000000000000000000000008433d85810000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000400000000000000000000000000000000000000000000000000000000000000003313233000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000".

  Goal extract_output result state = Some expected_output.
  Proof.
    reflexivity.
  Qed.
End Step9.
