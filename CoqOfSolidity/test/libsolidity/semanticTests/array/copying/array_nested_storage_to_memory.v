(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Pragma abicoderv2 *)

(* Contract *)
Module C.
  Definition a1 : Value.t :=
    undefined.

  Definition a2 : Value.t :=
    undefined.

  Definition a3 : Value.t :=
    undefined.

  Definition a4 : Value.t :=
    undefined.

  Definition  (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "a1" |),
          M.call (|
            NewExpression (* Beginning of a node! *)
id: 27
src: 156:11:0
nodeType: ArrayTypeName
baseType: (* Beginning of a node! *)
id: 26
src: 156:9:0
nodeType: ArrayTypeName
baseType: Ty.path "uint256"
length: 
typeDescriptions: typeString uint256[]typeIdentifier st_array$_t_uint256_$dyn_storage_ptr

length: 
typeDescriptions: typeString uint256[][]typeIdentifier st_array$_t_array$_t_uint256_$dyn_storage_$dyn_storage_ptr

,
            [
              Value.Integer 2
            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "a1" |),
            Some (Value.Integer 0)
          |),
          Value.Array [
            Value.Integer 1,
            Value.Integer 2
          ]
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "a1" |),
            Some (Value.Integer 1)
          |),
          Value.Array [
            Value.Integer 3,
            Value.Integer 4,
            Value.Integer 5
          ]
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "a2" |),
            Some (Value.Integer 0)
          |),
          Value.Array [
            Value.Integer 6,
            Value.Integer 7,
            Value.Integer 8
          ]
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "a2" |),
            Some (Value.Integer 1)
          |),
          Value.Array [
            Value.Integer 9
          ]
        |) in
      let _ :=
        M.call (|
          M.member_access (|
            M.get_name (| "a3" |),
            "push"
          |),
          [
            Value.Array [
              Value.Integer 1,
              Value.Integer 2
            ]
          ]
        |) in
      let _ :=
        M.call (|
          M.member_access (|
            M.get_name (| "a3" |),
            "push"
          |),
          [
            Value.Array [
              Value.Integer 3,
              Value.Integer 4
            ]
          ]
        |) in
      let _ :=
        M.call (|
          M.member_access (|
            M.get_name (| "a3" |),
            "push"
          |),
          [
            Value.Array [
              Value.Integer 5,
              Value.Integer 6
            ]
          ]
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "a4" |),
          Value.Array [
            Value.Array [
              Value.Integer 10,
              Value.Integer 11
            ],
            Value.Array [
              Value.Integer 12,
              Value.Integer 13
            ]
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition test1 (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          M.get_name (| "a1" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition test2 (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          M.get_name (| "a2" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition test3 (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          M.get_name (| "a3" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition test4 (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          M.get_name (| "a4" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
