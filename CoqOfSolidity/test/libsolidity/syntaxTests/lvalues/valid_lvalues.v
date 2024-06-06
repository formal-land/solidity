(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  (* Struct S *)

  Definition i (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition e (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition s1 : Value.t :=
    undefined.

  Definition f (α : list Value.t) : M :=
    match α with
    | [x, y] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "x" |),
          Value.Integer 42
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "y" |),
          M.call (|
            Ty.path "bytes32",
            [
              Value.Integer 0
            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          Value.Tuple [
            M.get_name (| "x" |),
            M.get_name (| "y" |)
          ],
          Value.Tuple [
            Value.Integer 23,
            M.call (|
              Ty.path "bytes32",
              [
                Value.Integer 0
              ]
            |)
          ]
        |) in
      let _ :=
        M.define (|
          [ "ms1" ],
          Value.Default
        |) in
      let _ :=
        M.define (|
          [ "ms2" ],
          Value.Default
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "ms1" |),
          M.get_name (| "ms2" |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.member_access (|
            M.get_name (| "ms1" |),
            "x"
          |),
          M.get_name (| "x" |)
        |) in
      let _ :=
        M.define (|
          [ "a" ],
          M.call (|
            NewExpression (* Beginning of a node! *)
id: 67
src: 350:9:0
nodeType: ArrayTypeName
baseType: Ty.path "uint256"
length: 
typeDescriptions: typeString uint256[]typeIdentifier st_array$_t_uint256_$dyn_storage_ptr

,
            [
              Value.Integer 2
            ]
          |)
        |) in
      let _ :=
        M.define (|
          [ "b" ],
          M.call (|
            NewExpression (* Beginning of a node! *)
id: 78
src: 397:9:0
nodeType: ArrayTypeName
baseType: Ty.path "uint256"
length: 
typeDescriptions: typeString uint256[]typeIdentifier st_array$_t_uint256_$dyn_storage_ptr

,
            [
              Value.Integer 3
            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "a" |),
          M.get_name (| "b" |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "a" |),
            Some (Value.Integer 0)
          |),
          M.get_name (| "x" |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "s1" |),
            Some (Value.Integer 0)
          |),
          M.get_name (| "x" |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "s1" |),
          M.get_name (| "a" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition g (α : list Value.t) : M :=
    match α with
    | [x] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "x" |),
          M.get_name (| "i" |)
        |) in
      let _ :=
        M.define (|
          [ "y" ],
          Value.Default
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "y" |),
          M.member_access (|
            M.get_name (| "this" |),
            "f"
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition g (α : list Value.t) : M :=
    match α with
    | [x] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "x" |),
          M.member_access (|
            M.get_name (| "this" |),
            "e"
          |)
        |) in
      let _ :=
        M.define (|
          [ "y" ],
          Value.Default
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "y" |),
          M.get_name (| "g" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
