(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Pragma abicoderv2 *)

(* Contract *)
Module Test.
  (* Struct MemoryTuple *)

  Definition withinArray (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "before" ],
          M.call (|
            NewExpression (* Beginning of a node! *)
id: 17
src: 173:6:0
nodeType: ArrayTypeName
baseType: Ty.path "uint"
length: 
typeDescriptions: typeString uint256[]typeIdentifier st_array$_t_uint256_$dyn_storage_ptr

,
            [
              Value.Integer 1
            ]
          |)
        |) in
      let _ :=
        M.define (|
          [ "corrupt" ],
          M.call (|
            M.member_access (|
              M.get_name (| "abi" |),
              "encode"
            |),
            [
              M.call (|
                Ty.path "uint",
                [
                  Value.Integer 32
                ]
              |),
              M.call (|
                Ty.path "uint",
                [
                  Value.Integer 2
                ]
              |)
            ]
          |)
        |) in
      let _ :=
        M.define (|
          [ "afterCorrupt" ],
          Value.Default
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "before" |),
            Some (Value.Integer 0)
          |),
          Value.Integer 123456
        |) in
      let _ :=
        M.assign (|
          "=",
          M.member_access (|
            M.get_name (| "afterCorrupt" |),
            "field1"
          |),
          M.call (|
            Ty.path "uint",
            [
              Value.Integer 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff60
            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.member_access (|
            M.get_name (| "afterCorrupt" |),
            "field2"
          |),
          M.call (|
            Ty.path "uint",
            [
              Value.Integer 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff60
            ]
          |)
        |) in
      let _ :=
        M.define (|
          [ "decoded" ],
          M.call (|
            M.member_access (|
              M.get_name (| "abi" |),
              "decode"
            |),
            [
              M.get_name (| "corrupt" |),
              Value.Tuple [
                M.index_access (|
                  M.index_access (|
                    Ty.path "uint",
                    None
                  |),
                  None
                |)
              ]
            ]
          |)
        |) in
      let _ :=
        M.return_ (|
          M.bin_op (|
            "+",
            M.index_access (|
              M.index_access (|
                M.get_name (| "decoded" |),
                Some (Value.Integer 0)
              |),
              Some (Value.Integer 0)
            |),
            M.index_access (|
              M.index_access (|
                M.get_name (| "decoded" |),
                Some (Value.Integer 1)
              |),
              Some (Value.Integer 0)
            |)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End Test.
