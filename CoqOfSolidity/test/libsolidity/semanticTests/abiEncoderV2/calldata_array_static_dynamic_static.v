(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Pragma abicoderv2 *)

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [s] =>
      let _ :=
        M.return_ (|
          M.member_access (|
            M.get_name (| "msg" |),
            "data"
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition f2 (α : list Value.t) : M :=
    match α with
    | [s] =>
      let _ :=
        M.return_ (|
          M.member_access (|
            M.get_name (| "msg" |),
            "data"
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition reenc_f (α : list Value.t) : M :=
    match α with
    | [s] =>
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "this" |),
              "f"
            |),
            [
              M.get_name (| "s" |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition reenc_f2 (α : list Value.t) : M :=
    match α with
    | [s] =>
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "this" |),
              "f2"
            |),
            [
              M.get_name (| "s" |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition g (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "m" ],
          Value.Array [
            M.call (|
              NewExpression (* Beginning of a node! *)
id: 86
src: 602:10:0
nodeType: ArrayTypeName
baseType: (* Beginning of a node! *)
id: 85
src: 602:8:0
nodeType: ArrayTypeName
baseType: Ty.path "uint8"
length: Value.Integer 1
typeDescriptions: typeString uint8[1]typeIdentifier st_array$_t_uint8_$1_storage_ptr

length: 
typeDescriptions: typeString uint8[1][]typeIdentifier st_array$_t_array$_t_uint8_$1_storage_$dyn_storage_ptr

,
              [
                Value.Integer 1
              ]
            |)
          ]
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.index_access (|
              M.index_access (|
                M.get_name (| "m" |),
                Some (Value.Integer 0)
              |),
              Some (Value.Integer 0)
            |),
            Some (Value.Integer 0)
          |),
          Value.Integer 42
        |) in
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "this" |),
              "f"
            |),
            [
              M.get_name (| "m" |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition h (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "m" ],
          Value.Array [
            M.call (|
              NewExpression (* Beginning of a node! *)
id: 125
src: 764:10:0
nodeType: ArrayTypeName
baseType: (* Beginning of a node! *)
id: 124
src: 764:8:0
nodeType: ArrayTypeName
baseType: Ty.path "uint8"
length: Value.Integer 1
typeDescriptions: typeString uint8[1]typeIdentifier st_array$_t_uint8_$1_storage_ptr

length: 
typeDescriptions: typeString uint8[1][]typeIdentifier st_array$_t_array$_t_uint8_$1_storage_$dyn_storage_ptr

,
              [
                Value.Integer 1
              ]
            |)
          ]
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.index_access (|
              M.index_access (|
                M.get_name (| "m" |),
                Some (Value.Integer 0)
              |),
              Some (Value.Integer 0)
            |),
            Some (Value.Integer 0)
          |),
          Value.Integer 42
        |) in
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "this" |),
              "reenc_f"
            |),
            [
              M.get_name (| "m" |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition i (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "m" ],
          Value.Array [
            M.call (|
              NewExpression (* Beginning of a node! *)
id: 164
src: 934:12:0
nodeType: ArrayTypeName
baseType: (* Beginning of a node! *)
id: 163
src: 934:10:0
nodeType: ArrayTypeName
baseType: Ty.path "uint256"
length: Value.Integer 2
typeDescriptions: typeString uint256[2]typeIdentifier st_array$_t_uint256_$2_storage_ptr

length: 
typeDescriptions: typeString uint256[2][]typeIdentifier st_array$_t_array$_t_uint256_$2_storage_$dyn_storage_ptr

,
              [
                Value.Integer 1
              ]
            |),
            M.call (|
              NewExpression (* Beginning of a node! *)
id: 171
src: 954:12:0
nodeType: ArrayTypeName
baseType: (* Beginning of a node! *)
id: 170
src: 954:10:0
nodeType: ArrayTypeName
baseType: Ty.path "uint256"
length: Value.Integer 2
typeDescriptions: typeString uint256[2]typeIdentifier st_array$_t_uint256_$2_storage_ptr

length: 
typeDescriptions: typeString uint256[2][]typeIdentifier st_array$_t_array$_t_uint256_$2_storage_$dyn_storage_ptr

,
              [
                Value.Integer 1
              ]
            |)
          ]
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.index_access (|
              M.index_access (|
                M.get_name (| "m" |),
                Some (Value.Integer 0)
              |),
              Some (Value.Integer 0)
            |),
            Some (Value.Integer 0)
          |),
          Value.Integer 0x00042
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.index_access (|
              M.index_access (|
                M.get_name (| "m" |),
                Some (Value.Integer 0)
              |),
              Some (Value.Integer 0)
            |),
            Some (Value.Integer 1)
          |),
          Value.Integer 0x00142
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.index_access (|
              M.index_access (|
                M.get_name (| "m" |),
                Some (Value.Integer 1)
              |),
              Some (Value.Integer 0)
            |),
            Some (Value.Integer 0)
          |),
          Value.Integer 0x10042
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.index_access (|
              M.index_access (|
                M.get_name (| "m" |),
                Some (Value.Integer 1)
              |),
              Some (Value.Integer 0)
            |),
            Some (Value.Integer 1)
          |),
          Value.Integer 0x10142
        |) in
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "this" |),
              "f2"
            |),
            [
              M.get_name (| "m" |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition j (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "m" ],
          Value.Array [
            M.call (|
              NewExpression (* Beginning of a node! *)
id: 240
src: 1216:12:0
nodeType: ArrayTypeName
baseType: (* Beginning of a node! *)
id: 239
src: 1216:10:0
nodeType: ArrayTypeName
baseType: Ty.path "uint256"
length: Value.Integer 2
typeDescriptions: typeString uint256[2]typeIdentifier st_array$_t_uint256_$2_storage_ptr

length: 
typeDescriptions: typeString uint256[2][]typeIdentifier st_array$_t_array$_t_uint256_$2_storage_$dyn_storage_ptr

,
              [
                Value.Integer 1
              ]
            |),
            M.call (|
              NewExpression (* Beginning of a node! *)
id: 247
src: 1236:12:0
nodeType: ArrayTypeName
baseType: (* Beginning of a node! *)
id: 246
src: 1236:10:0
nodeType: ArrayTypeName
baseType: Ty.path "uint256"
length: Value.Integer 2
typeDescriptions: typeString uint256[2]typeIdentifier st_array$_t_uint256_$2_storage_ptr

length: 
typeDescriptions: typeString uint256[2][]typeIdentifier st_array$_t_array$_t_uint256_$2_storage_$dyn_storage_ptr

,
              [
                Value.Integer 1
              ]
            |)
          ]
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.index_access (|
              M.index_access (|
                M.get_name (| "m" |),
                Some (Value.Integer 0)
              |),
              Some (Value.Integer 0)
            |),
            Some (Value.Integer 0)
          |),
          Value.Integer 0x00042
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.index_access (|
              M.index_access (|
                M.get_name (| "m" |),
                Some (Value.Integer 0)
              |),
              Some (Value.Integer 0)
            |),
            Some (Value.Integer 1)
          |),
          Value.Integer 0x00142
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.index_access (|
              M.index_access (|
                M.get_name (| "m" |),
                Some (Value.Integer 1)
              |),
              Some (Value.Integer 0)
            |),
            Some (Value.Integer 0)
          |),
          Value.Integer 0x10042
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.index_access (|
              M.index_access (|
                M.get_name (| "m" |),
                Some (Value.Integer 1)
              |),
              Some (Value.Integer 0)
            |),
            Some (Value.Integer 1)
          |),
          Value.Integer 0x10142
        |) in
      let _ :=
        M.return_ (|
          M.call (|
            M.member_access (|
              M.get_name (| "this" |),
              "reenc_f2"
            |),
            [
              M.get_name (| "m" |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
