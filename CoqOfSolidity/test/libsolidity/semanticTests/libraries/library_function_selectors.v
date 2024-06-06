(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Library *)
Module L.
  Definition f (α : list Value.t) : M :=
    match α with
    | [x] =>
      let _ :=
        M.return_ (|
          M.get_name (| "x" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition g (α : list Value.t) : M :=
    match α with
    | [s] =>
      let _ :=
        M.return_ (|
          M.member_access (|
            M.get_name (| "s" |),
            "length"
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition h (α : list Value.t) : M :=
    match α with
    | [m] =>
      let _ :=
        M.return_ (|
          M.member_access (|
            M.get_name (| "m" |),
            "length"
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End L.

(* Contract *)
Module C.
  Definition s : Value.t :=
    undefined.

  Definition  (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.while (|
          WhileKind.While,
          M.bin_op (|
            "<",
            M.member_access (|
              M.get_name (| "s" |),
              "length"
            |),
            Value.Integer 42
          |),
          M.call (|
            M.member_access (|
              M.get_name (| "s" |),
              "push"
            |),
            [
              Value.Integer 0
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "success"; "data" ],
          M.call (|
            M.member_access (|
              M.call (|
                Ty.path "address",
                [
                  M.get_name (| "L" |)
                ]
              |),
              "delegatecall"
            |),
            [
              M.call (|
                M.member_access (|
                  M.get_name (| "abi" |),
                  "encodeWithSelector"
                |),
                [
                  M.member_access (|
                    M.member_access (|
                      M.get_name (| "L" |),
                      "f"
                    |),
                    "selector"
                  |),
                  Value.Integer 7
                ]
              |)
            ]
          |)
        |) in
      let _ :=
        M.return_ (|
          Value.Tuple [
            M.bin_op (|
              "==",
              M.member_access (|
                M.member_access (|
                  M.get_name (| "L" |),
                  "f"
                |),
                "selector"
              |),
              M.call (|
                Ty.path "bytes4",
                [
                  M.call (|
                    M.get_name (| "keccak256" |),
                    [
                      Value.String "f(uint256)"
                    ]
                  |)
                ]
              |)
            |),
            M.get_name (| "success" |),
            M.call (|
              M.member_access (|
                M.get_name (| "abi" |),
                "decode"
              |),
              [
                M.get_name (| "data" |),
                Value.Tuple [
                  Ty.path "uint256"
                ]
              ]
            |)
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition g (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "s_ptr" ],
          Value.Default
        |) in
      let _ :=
        (* Beginning of a node! *)
id: 113
src: 661:28:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 681:6:0declaration: 38sSlot: isOffset: suffix: slotalueSize: src: 672:5:0declaration: 111isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      let _ :=
        M.define (|
          [ "success"; "data" ],
          M.call (|
            M.member_access (|
              M.call (|
                Ty.path "address",
                [
                  M.get_name (| "L" |)
                ]
              |),
              "delegatecall"
            |),
            [
              M.call (|
                M.member_access (|
                  M.get_name (| "abi" |),
                  "encodeWithSelector"
                |),
                [
                  M.member_access (|
                    M.member_access (|
                      M.get_name (| "L" |),
                      "g"
                    |),
                    "selector"
                  |),
                  M.get_name (| "s_ptr" |)
                ]
              |)
            ]
          |)
        |) in
      let _ :=
        M.return_ (|
          Value.Tuple [
            M.bin_op (|
              "==",
              M.member_access (|
                M.member_access (|
                  M.get_name (| "L" |),
                  "g"
                |),
                "selector"
              |),
              M.call (|
                Ty.path "bytes4",
                [
                  M.call (|
                    M.get_name (| "keccak256" |),
                    [
                      Value.String "g(uint256[] storage)"
                    ]
                  |)
                ]
              |)
            |),
            M.get_name (| "success" |),
            M.call (|
              M.member_access (|
                M.get_name (| "abi" |),
                "decode"
              |),
              [
                M.get_name (| "data" |),
                Value.Tuple [
                  Ty.path "uint256"
                ]
              ]
            |)
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition h (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "success"; "data" ],
          M.call (|
            M.member_access (|
              M.call (|
                Ty.path "address",
                [
                  M.get_name (| "L" |)
                ]
              |),
              "delegatecall"
            |),
            [
              M.call (|
                M.member_access (|
                  M.get_name (| "abi" |),
                  "encodeWithSelector"
                |),
                [
                  M.member_access (|
                    M.member_access (|
                      M.get_name (| "L" |),
                      "h"
                    |),
                    "selector"
                  |),
                  M.call (|
                    NewExpression (* Beginning of a node! *)
id: 177
src: 1071:9:0
nodeType: ArrayTypeName
baseType: Ty.path "uint256"
length: 
typeDescriptions: typeString uint256[]typeIdentifier st_array$_t_uint256_$dyn_storage_ptr

,
                    [
                      Value.Integer 23
                    ]
                  |)
                ]
              |)
            ]
          |)
        |) in
      let _ :=
        M.return_ (|
          Value.Tuple [
            M.bin_op (|
              "==",
              M.member_access (|
                M.member_access (|
                  M.get_name (| "L" |),
                  "h"
                |),
                "selector"
              |),
              M.call (|
                Ty.path "bytes4",
                [
                  M.call (|
                    M.get_name (| "keccak256" |),
                    [
                      Value.String "h(uint256[])"
                    ]
                  |)
                ]
              |)
            |),
            M.get_name (| "success" |),
            M.call (|
              M.member_access (|
                M.get_name (| "abi" |),
                "decode"
              |),
              [
                M.get_name (| "data" |),
                Value.Tuple [
                  Ty.path "uint256"
                ]
              ]
            |)
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
