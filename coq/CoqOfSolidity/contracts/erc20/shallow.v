(* Generated by shallow_embed.py *)
Require Import CoqOfSolidity.CoqOfSolidity.
Require Import CoqOfSolidity.simulations.CoqOfSolidity.
Import Stdlib.

Module Erc20_403.
  Definition checked_add_uint256 (x : U256.t) : M.t U256.t :=
    let~ '(_, sum) :=
      let sum := 0 in
      let~ sum := [[ add ~(| x, 0x14 |) ]] in
      let_state~ 'tt := [[
        Shallow.if_ (|
          gt ~(| x, sum |),
          do~ [[ mstore ~(| 0, shl ~(| 224, 0x4e487b71 |) |) ]] in
          do~ [[ mstore ~(| 4, 0x11 |) ]] in
          do~ [[ revert ~(| 0, 0x24 |) ]] in
          M.pure (BlockUnit.Tt, tt),
          tt
        |)
      ]] default~ sum in
      M.pure (BlockUnit.Tt, sum)
    in
    M.pure sum.

  Definition body : M.t unit :=
    let~ '(_, result) :=
      let_state~ 'tt :=
        let~ _1 := [[ memoryguard ~(| 0x80 |) ]] in
        do~ [[ mstore ~(| 64, _1 |) ]] in
        let_state~ 'tt := [[
          Shallow.if_ (|
            callvalue ~(||),
            do~ [[ revert ~(| 0, 0 |) ]] in
            M.pure (BlockUnit.Tt, tt),
            tt
          |)
        ]] default~ tt in
        let_state~ 'tt := [[
          Shallow.if_ (|
            iszero ~(| caller ~(||) |),
            do~ [[ mstore ~(| _1, shl ~(| 229, 4594637 |) |) ]] in
            do~ [[ mstore ~(| add ~(| _1, 4 |), 32 |) ]] in
            do~ [[ mstore ~(| add ~(| _1, 36 |), 31 |) ]] in
            do~ [[ mstore ~(| add ~(| _1, 68 |), 0x45726332303a206d696e7420746f20746865207a65726f206164647265737300 (* Erc20: mint to the zero address *) |) ]] in
            do~ [[ revert ~(| _1, 100 |) ]] in
            M.pure (BlockUnit.Tt, tt),
            tt
          |)
        ]] default~ tt in
        do~ [[ sstore ~(| 0x02, checked_add_uint256 ~(| sload ~(| 0x02 |) |) |) ]] in
        do~ [[ mstore ~(| 0x00, caller ~(||) |) ]] in
        do~ [[ mstore ~(| 0x20, 0x00 |) ]] in
        let~ _2 := [[ checked_add_uint256 ~(| sload ~(| keccak256 ~(| 0x00, 64 |) |) |) ]] in
        do~ [[ mstore ~(| 0x00, caller ~(||) |) ]] in
        do~ [[ mstore ~(| 0x20, 0x00 |) ]] in
        do~ [[ sstore ~(| keccak256 ~(| 0x00, 64 |), _2 |) ]] in
        let~ _3 := [[ mload ~(| 64 |) ]] in
        do~ [[ mstore ~(| _3, 0x14 |) ]] in
        do~ [[ log3 ~(| _3, 0x20, 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef, 0x00, caller ~(||) |) ]] in
        let~ _4 := [[ mload ~(| 64 |) ]] in
        let~ _5 := [[ datasize ~(| 0x45726332305f3430335f6465706c6f7965640000000000000000000000000000 (* Erc20_403_deployed *) |) ]] in
        do~ [[ codecopy ~(| _4, dataoffset ~(| 0x45726332305f3430335f6465706c6f7965640000000000000000000000000000 (* Erc20_403_deployed *) |), _5 |) ]] in
        do~ [[ return_ ~(| _4, _5 |) ]] in
        M.pure (BlockUnit.Tt, tt)
      default~ tt in
      M.pure (BlockUnit.Tt, tt)
    in
    M.pure result.

  Module Erc20_403_deployed.
    Definition abi_decode_address : M.t U256.t :=
      let~ '(_, value) :=
        let value := 0 in
        let~ value := [[ calldataload ~(| 4 |) ]] in
        let_state~ 'tt := [[
          Shallow.if_ (|
            iszero ~(| eq ~(| value, and ~(| value, sub ~(| shl ~(| 160, 1 |), 1 |) |) |) |),
            do~ [[ revert ~(| 0, 0 |) ]] in
            M.pure (BlockUnit.Tt, tt),
            tt
          |)
        ]] default~ value in
        M.pure (BlockUnit.Tt, value)
      in
      M.pure value.

    Definition abi_decode_address_2305 : M.t U256.t :=
      let~ '(_, value) :=
        let value := 0 in
        let~ value := [[ calldataload ~(| 36 |) ]] in
        let_state~ 'tt := [[
          Shallow.if_ (|
            iszero ~(| eq ~(| value, and ~(| value, sub ~(| shl ~(| 160, 1 |), 1 |) |) |) |),
            do~ [[ revert ~(| 0, 0 |) ]] in
            M.pure (BlockUnit.Tt, tt),
            tt
          |)
        ]] default~ value in
        M.pure (BlockUnit.Tt, value)
      in
      M.pure value.

    Definition checked_add_uint256 (x : U256.t) (y : U256.t) : M.t U256.t :=
      let~ '(_, sum) :=
        let sum := 0 in
        let~ sum := [[ add ~(| x, y |) ]] in
        let_state~ 'tt := [[
          Shallow.if_ (|
            gt ~(| x, sum |),
            do~ [[ mstore ~(| 0, shl ~(| 224, 0x4e487b71 |) |) ]] in
            do~ [[ mstore ~(| 4, 0x11 |) ]] in
            do~ [[ revert ~(| 0, 0x24 |) ]] in
            M.pure (BlockUnit.Tt, tt),
            tt
          |)
        ]] default~ sum in
        M.pure (BlockUnit.Tt, sum)
      in
      M.pure sum.

    Definition checked_sub_uint256 (x : U256.t) (y : U256.t) : M.t U256.t :=
      let~ '(_, diff) :=
        let diff := 0 in
        let~ diff := [[ sub ~(| x, y |) ]] in
        let_state~ 'tt := [[
          Shallow.if_ (|
            gt ~(| diff, x |),
            do~ [[ mstore ~(| 0, shl ~(| 224, 0x4e487b71 |) |) ]] in
            do~ [[ mstore ~(| 4, 0x11 |) ]] in
            do~ [[ revert ~(| 0, 0x24 |) ]] in
            M.pure (BlockUnit.Tt, tt),
            tt
          |)
        ]] default~ diff in
        M.pure (BlockUnit.Tt, diff)
      in
      M.pure diff.

    Definition fun_approve (var_owner : U256.t) (var_spender : U256.t) (var_value : U256.t) : M.t unit :=
      let~ '(_, tt) :=
        let~ _1 := [[ and ~(| var_owner, sub ~(| shl ~(| 160, 1 |), 1 |) |) ]] in
        let_state~ 'tt := [[
          Shallow.if_ (|
            iszero ~(| _1 |),
            let~ memPtr := [[ mload ~(| 64 |) ]] in
            do~ [[ mstore ~(| memPtr, shl ~(| 229, 4594637 |) |) ]] in
            do~ [[ mstore ~(| add ~(| memPtr, 4 |), 32 |) ]] in
            do~ [[ mstore ~(| add ~(| memPtr, 36 |), 36 |) ]] in
            do~ [[ mstore ~(| add ~(| memPtr, 68 |), 0x45726332303a20617070726f76652066726f6d20746865207a65726f20616464 (* Erc20: approve from the zero add *) |) ]] in
            do~ [[ mstore ~(| add ~(| memPtr, 100 |), 0x7265737300000000000000000000000000000000000000000000000000000000 (* ress *) |) ]] in
            do~ [[ revert ~(| memPtr, 132 |) ]] in
            M.pure (BlockUnit.Tt, tt),
            tt
          |)
        ]] default~ tt in
        let~ _2 := [[ and ~(| var_spender, sub ~(| shl ~(| 160, 1 |), 1 |) |) ]] in
        let_state~ 'tt := [[
          Shallow.if_ (|
            iszero ~(| _2 |),
            let~ memPtr_1 := [[ mload ~(| 64 |) ]] in
            do~ [[ mstore ~(| memPtr_1, shl ~(| 229, 4594637 |) |) ]] in
            do~ [[ mstore ~(| add ~(| memPtr_1, 4 |), 32 |) ]] in
            do~ [[ mstore ~(| add ~(| memPtr_1, 36 |), 34 |) ]] in
            do~ [[ mstore ~(| add ~(| memPtr_1, 68 |), 0x45726332303a20617070726f766520746f20746865207a65726f206164647265 (* Erc20: approve to the zero addre *) |) ]] in
            do~ [[ mstore ~(| add ~(| memPtr_1, 100 |), 0x7373000000000000000000000000000000000000000000000000000000000000 (* ss *) |) ]] in
            do~ [[ revert ~(| memPtr_1, 132 |) ]] in
            M.pure (BlockUnit.Tt, tt),
            tt
          |)
        ]] default~ tt in
        do~ [[ mstore ~(| 0x00, _1 |) ]] in
        do~ [[ mstore ~(| 0x20, 0x01 |) ]] in
        let~ dataSlot := [[ keccak256 ~(| 0x00, 0x40 |) ]] in
        let~ dataSlot_1 := [[ 0 ]] in
        do~ [[ mstore ~(| 0, _2 |) ]] in
        do~ [[ mstore ~(| 0x20, dataSlot |) ]] in
        let~ dataSlot_1 := [[ keccak256 ~(| 0, 0x40 |) ]] in
        do~ [[ sstore ~(| dataSlot_1, var_value |) ]] in
        let~ _3 := [[ mload ~(| 0x40 |) ]] in
        do~ [[ mstore ~(| _3, var_value |) ]] in
        do~ [[ log3 ~(| _3, 0x20, 0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925, _1, _2 |) ]] in
        M.pure (BlockUnit.Tt, tt)
      in
      M.pure tt.

    Definition fun_transfer (var_from : U256.t) (var_to : U256.t) (var_value : U256.t) : M.t unit :=
      let~ '(_, tt) :=
        let~ _1 := [[ and ~(| var_to, sub ~(| shl ~(| 160, 1 |), 1 |) |) ]] in
        let_state~ 'tt := [[
          Shallow.if_ (|
            iszero ~(| _1 |),
            let~ memPtr := [[ mload ~(| 64 |) ]] in
            do~ [[ mstore ~(| memPtr, shl ~(| 229, 4594637 |) |) ]] in
            do~ [[ mstore ~(| add ~(| memPtr, 4 |), 32 |) ]] in
            do~ [[ mstore ~(| add ~(| memPtr, 36 |), 35 |) ]] in
            do~ [[ mstore ~(| add ~(| memPtr, 68 |), 0x45726332303a207472616e7366657220746f20746865207a65726f2061646472 (* Erc20: transfer to the zero addr *) |) ]] in
            do~ [[ mstore ~(| add ~(| memPtr, 100 |), 0x6573730000000000000000000000000000000000000000000000000000000000 (* ess *) |) ]] in
            do~ [[ revert ~(| memPtr, 132 |) ]] in
            M.pure (BlockUnit.Tt, tt),
            tt
          |)
        ]] default~ tt in
        let~ _2 := [[ and ~(| var_from, sub ~(| shl ~(| 160, 1 |), 1 |) |) ]] in
        do~ [[ mstore ~(| 0x00, _2 |) ]] in
        do~ [[ mstore ~(| 0x20, 0x00 |) ]] in
        let~ _3 := [[ checked_sub_uint256 ~(| sload ~(| keccak256 ~(| 0x00, 0x40 |) |), var_value |) ]] in
        do~ [[ mstore ~(| 0x00, _2 |) ]] in
        do~ [[ mstore ~(| 0x20, 0x00 |) ]] in
        do~ [[ sstore ~(| keccak256 ~(| 0x00, 0x40 |), _3 |) ]] in
        do~ [[ mstore ~(| 0x00, _1 |) ]] in
        do~ [[ mstore ~(| 0x20, 0x00 |) ]] in
        let~ _4 := [[ checked_add_uint256 ~(| sload ~(| keccak256 ~(| 0x00, 0x40 |) |), var_value |) ]] in
        do~ [[ mstore ~(| 0x00, _1 |) ]] in
        do~ [[ mstore ~(| 0x20, 0x00 |) ]] in
        do~ [[ sstore ~(| keccak256 ~(| 0x00, 0x40 |), _4 |) ]] in
        let~ _5 := [[ mload ~(| 0x40 |) ]] in
        do~ [[ mstore ~(| _5, var_value |) ]] in
        do~ [[ log3 ~(| _5, 0x20, 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef, _2, _1 |) ]] in
        M.pure (BlockUnit.Tt, tt)
      in
      M.pure tt.

    Definition body : M.t unit :=
      let~ '(_, result) :=
        let_state~ 'tt :=
          do~ [[ mstore ~(| 64, memoryguard ~(| 0x80 |) |) ]] in
          let_state~ 'tt := [[
            Shallow.if_ (|
              iszero ~(| lt ~(| calldatasize ~(||), 4 |) |),
              let_state~ 'tt := [[
                (* switch *)
                let~ δ := [[ shr ~(| 224, calldataload ~(| 0 |) |) ]] in
                if δ =? 0x095ea7b3 then
                  let_state~ 'tt := [[
                    Shallow.if_ (|
                      callvalue ~(||),
                      do~ [[ revert ~(| 0, 0 |) ]] in
                      M.pure (BlockUnit.Tt, tt),
                      tt
                    |)
                  ]] default~ tt in
                  let_state~ 'tt := [[
                    Shallow.if_ (|
                      slt ~(| add ~(| calldatasize ~(||), not ~(| 3 |) |), 64 |),
                      do~ [[ revert ~(| 0, 0 |) ]] in
                      M.pure (BlockUnit.Tt, tt),
                      tt
                    |)
                  ]] default~ tt in
                  let~ value0 := [[ abi_decode_address ~(||) ]] in
                  do~ [[ fun_approve ~(| caller ~(||), value0, calldataload ~(| 36 |) |) ]] in
                  let~ memPos := [[ mload ~(| 64 |) ]] in
                  do~ [[ mstore ~(| memPos, 1 |) ]] in
                  do~ [[ return_ ~(| memPos, 32 |) ]] in
                  M.pure (BlockUnit.Tt, tt)
                else if δ =? 0x18160ddd then
                  let_state~ 'tt := [[
                    Shallow.if_ (|
                      callvalue ~(||),
                      do~ [[ revert ~(| 0, 0 |) ]] in
                      M.pure (BlockUnit.Tt, tt),
                      tt
                    |)
                  ]] default~ tt in
                  let_state~ 'tt := [[
                    Shallow.if_ (|
                      slt ~(| add ~(| calldatasize ~(||), not ~(| 3 |) |), 0 |),
                      do~ [[ revert ~(| 0, 0 |) ]] in
                      M.pure (BlockUnit.Tt, tt),
                      tt
                    |)
                  ]] default~ tt in
                  let~ _1 := [[ sload ~(| 0x02 |) ]] in
                  let~ memPos_1 := [[ mload ~(| 64 |) ]] in
                  do~ [[ mstore ~(| memPos_1, _1 |) ]] in
                  do~ [[ return_ ~(| memPos_1, 32 |) ]] in
                  M.pure (BlockUnit.Tt, tt)
                else if δ =? 0x23b872dd then
                  let_state~ 'tt := [[
                    Shallow.if_ (|
                      callvalue ~(||),
                      do~ [[ revert ~(| 0, 0 |) ]] in
                      M.pure (BlockUnit.Tt, tt),
                      tt
                    |)
                  ]] default~ tt in
                  let_state~ 'tt := [[
                    Shallow.if_ (|
                      slt ~(| add ~(| calldatasize ~(||), not ~(| 3 |) |), 96 |),
                      do~ [[ revert ~(| 0, 0 |) ]] in
                      M.pure (BlockUnit.Tt, tt),
                      tt
                    |)
                  ]] default~ tt in
                  let~ value0_1 := [[ abi_decode_address ~(||) ]] in
                  let~ value1 := [[ abi_decode_address_2305 ~(||) ]] in
                  let~ value := [[ calldataload ~(| 68 |) ]] in
                  do~ [[ fun_transfer ~(| value0_1, value1, value |) ]] in
                  do~ [[ mstore ~(| 0, and ~(| value0_1, sub ~(| shl ~(| 160, 1 |), 1 |) |) |) ]] in
                  do~ [[ mstore ~(| 32, 1 |) ]] in
                  let~ dataSlot := [[ keccak256 ~(| 0, 64 |) ]] in
                  let~ dataSlot_1 := [[ 0 ]] in
                  do~ [[ mstore ~(| 0, and ~(| caller ~(||), sub ~(| shl ~(| 160, 1 |), 1 |) |) |) ]] in
                  do~ [[ mstore ~(| 0x20, dataSlot |) ]] in
                  let~ dataSlot_1 := [[ keccak256 ~(| 0, 0x40 |) ]] in
                  do~ [[ fun_approve ~(| value0_1, caller ~(||), checked_sub_uint256 ~(| sload ~(| dataSlot_1 |), value |) |) ]] in
                  let~ memPos_2 := [[ mload ~(| 64 |) ]] in
                  do~ [[ mstore ~(| memPos_2, 1 |) ]] in
                  do~ [[ return_ ~(| memPos_2, 32 |) ]] in
                  M.pure (BlockUnit.Tt, tt)
                else if δ =? 0x39509351 then
                  let_state~ 'tt := [[
                    Shallow.if_ (|
                      callvalue ~(||),
                      do~ [[ revert ~(| 0, 0 |) ]] in
                      M.pure (BlockUnit.Tt, tt),
                      tt
                    |)
                  ]] default~ tt in
                  let_state~ 'tt := [[
                    Shallow.if_ (|
                      slt ~(| add ~(| calldatasize ~(||), not ~(| 3 |) |), 64 |),
                      do~ [[ revert ~(| 0, 0 |) ]] in
                      M.pure (BlockUnit.Tt, tt),
                      tt
                    |)
                  ]] default~ tt in
                  let~ value0_2 := [[ abi_decode_address ~(||) ]] in
                  do~ [[ mstore ~(| 0, caller ~(||) |) ]] in
                  do~ [[ mstore ~(| 32, 1 |) ]] in
                  let~ dataSlot_2 := [[ keccak256 ~(| 0, 64 |) ]] in
                  let~ dataSlot_3 := [[ 0 ]] in
                  do~ [[ mstore ~(| 0, and ~(| value0_2, sub ~(| shl ~(| 160, 1 |), 1 |) |) |) ]] in
                  do~ [[ mstore ~(| 0x20, dataSlot_2 |) ]] in
                  let~ dataSlot_3 := [[ keccak256 ~(| 0, 0x40 |) ]] in
                  do~ [[ fun_approve ~(| caller ~(||), value0_2, checked_add_uint256 ~(| sload ~(| dataSlot_3 |), calldataload ~(| 36 |) |) |) ]] in
                  let~ memPos_3 := [[ mload ~(| 64 |) ]] in
                  do~ [[ mstore ~(| memPos_3, 1 |) ]] in
                  do~ [[ return_ ~(| memPos_3, 32 |) ]] in
                  M.pure (BlockUnit.Tt, tt)
                else if δ =? 0x70a08231 then
                  let_state~ 'tt := [[
                    Shallow.if_ (|
                      callvalue ~(||),
                      do~ [[ revert ~(| 0, 0 |) ]] in
                      M.pure (BlockUnit.Tt, tt),
                      tt
                    |)
                  ]] default~ tt in
                  let_state~ 'tt := [[
                    Shallow.if_ (|
                      slt ~(| add ~(| calldatasize ~(||), not ~(| 3 |) |), 32 |),
                      do~ [[ revert ~(| 0, 0 |) ]] in
                      M.pure (BlockUnit.Tt, tt),
                      tt
                    |)
                  ]] default~ tt in
                  do~ [[ mstore ~(| 0, and ~(| abi_decode_address ~(||), sub ~(| shl ~(| 160, 1 |), 1 |) |) |) ]] in
                  do~ [[ mstore ~(| 32, 0 |) ]] in
                  let~ _2 := [[ sload ~(| keccak256 ~(| 0, 64 |) |) ]] in
                  let~ memPos_4 := [[ mload ~(| 64 |) ]] in
                  do~ [[ mstore ~(| memPos_4, _2 |) ]] in
                  do~ [[ return_ ~(| memPos_4, 32 |) ]] in
                  M.pure (BlockUnit.Tt, tt)
                else if δ =? 0xa457c2d7 then
                  let_state~ 'tt := [[
                    Shallow.if_ (|
                      callvalue ~(||),
                      do~ [[ revert ~(| 0, 0 |) ]] in
                      M.pure (BlockUnit.Tt, tt),
                      tt
                    |)
                  ]] default~ tt in
                  let_state~ 'tt := [[
                    Shallow.if_ (|
                      slt ~(| add ~(| calldatasize ~(||), not ~(| 3 |) |), 64 |),
                      do~ [[ revert ~(| 0, 0 |) ]] in
                      M.pure (BlockUnit.Tt, tt),
                      tt
                    |)
                  ]] default~ tt in
                  let~ value0_3 := [[ abi_decode_address ~(||) ]] in
                  do~ [[ mstore ~(| 0, caller ~(||) |) ]] in
                  do~ [[ mstore ~(| 32, 1 |) ]] in
                  let~ dataSlot_4 := [[ keccak256 ~(| 0, 64 |) ]] in
                  let~ dataSlot_5 := [[ 0 ]] in
                  do~ [[ mstore ~(| 0, and ~(| value0_3, sub ~(| shl ~(| 160, 1 |), 1 |) |) |) ]] in
                  do~ [[ mstore ~(| 0x20, dataSlot_4 |) ]] in
                  let~ dataSlot_5 := [[ keccak256 ~(| 0, 0x40 |) ]] in
                  do~ [[ fun_approve ~(| caller ~(||), value0_3, checked_sub_uint256 ~(| sload ~(| dataSlot_5 |), calldataload ~(| 36 |) |) |) ]] in
                  let~ memPos_5 := [[ mload ~(| 64 |) ]] in
                  do~ [[ mstore ~(| memPos_5, 1 |) ]] in
                  do~ [[ return_ ~(| memPos_5, 32 |) ]] in
                  M.pure (BlockUnit.Tt, tt)
                else if δ =? 0xa9059cbb then
                  let_state~ 'tt := [[
                    Shallow.if_ (|
                      callvalue ~(||),
                      do~ [[ revert ~(| 0, 0 |) ]] in
                      M.pure (BlockUnit.Tt, tt),
                      tt
                    |)
                  ]] default~ tt in
                  let_state~ 'tt := [[
                    Shallow.if_ (|
                      slt ~(| add ~(| calldatasize ~(||), not ~(| 3 |) |), 64 |),
                      do~ [[ revert ~(| 0, 0 |) ]] in
                      M.pure (BlockUnit.Tt, tt),
                      tt
                    |)
                  ]] default~ tt in
                  let~ value0_4 := [[ abi_decode_address ~(||) ]] in
                  do~ [[ fun_transfer ~(| caller ~(||), value0_4, calldataload ~(| 36 |) |) ]] in
                  let~ memPos_6 := [[ mload ~(| 64 |) ]] in
                  do~ [[ mstore ~(| memPos_6, 1 |) ]] in
                  do~ [[ return_ ~(| memPos_6, 32 |) ]] in
                  M.pure (BlockUnit.Tt, tt)
                else if δ =? 0xdd62ed3e then
                  let_state~ 'tt := [[
                    Shallow.if_ (|
                      callvalue ~(||),
                      do~ [[ revert ~(| 0, 0 |) ]] in
                      M.pure (BlockUnit.Tt, tt),
                      tt
                    |)
                  ]] default~ tt in
                  let_state~ 'tt := [[
                    Shallow.if_ (|
                      slt ~(| add ~(| calldatasize ~(||), not ~(| 3 |) |), 64 |),
                      do~ [[ revert ~(| 0, 0 |) ]] in
                      M.pure (BlockUnit.Tt, tt),
                      tt
                    |)
                  ]] default~ tt in
                  let~ value0_5 := [[ abi_decode_address ~(||) ]] in
                  let~ value1_1 := [[ abi_decode_address_2305 ~(||) ]] in
                  do~ [[ mstore ~(| 0, and ~(| value0_5, sub ~(| shl ~(| 160, 1 |), 1 |) |) |) ]] in
                  do~ [[ mstore ~(| 32, 0x01 |) ]] in
                  let~ dataSlot_6 := [[ keccak256 ~(| 0, 64 |) ]] in
                  let~ dataSlot_7 := [[ 0 ]] in
                  do~ [[ mstore ~(| 0, and ~(| value1_1, sub ~(| shl ~(| 160, 1 |), 1 |) |) |) ]] in
                  do~ [[ mstore ~(| 0x20, dataSlot_6 |) ]] in
                  let~ dataSlot_7 := [[ keccak256 ~(| 0, 0x40 |) ]] in
                  let~ _3 := [[ sload ~(| dataSlot_7 |) ]] in
                  let~ memPos_7 := [[ mload ~(| 64 |) ]] in
                  do~ [[ mstore ~(| memPos_7, _3 |) ]] in
                  do~ [[ return_ ~(| memPos_7, 32 |) ]] in
                  M.pure (BlockUnit.Tt, tt)
                else
                  M.pure (BlockUnit.Tt, tt)
              ]] default~ tt in
              M.pure (BlockUnit.Tt, tt),
              tt
            |)
          ]] default~ tt in
          do~ [[ revert ~(| 0, 0 |) ]] in
          M.pure (BlockUnit.Tt, tt)
        default~ tt in
        M.pure (BlockUnit.Tt, tt)
      in
      M.pure result.
  End Erc20_403_deployed.
End Erc20_403.
