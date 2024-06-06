(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition x : Value.t :=
    undefined.

  Definition y : Value.t :=
    undefined.

  Definition test (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "x" |),
          M.call (|
            NewExpression (* Beginning of a node! *)
id: 25
src: 165:36:0
nodeType: ArrayTypeName
baseType: (* Beginning of a node! *)
id: 24
src: 165:35:0
nodeType: FunctionTypeName
visibility: internal
stateMutability: nonpayable
parameterTypes: (* Beginning of a node! *)
id: 20
src: 173:2:0
nodeType: ParameterList
parameters: 

returnParameterTypes: (* Beginning of a node! *)
id: 23
src: 193:6:0
nodeType: ParameterList
parameters: Definition  : Value.t :=
              undefined.

typeDescriptions: typeString function () returns (uint256)typeIdentifier st_function_internal_nonpayable$__$returns$_t_uint256_$

length: 
typeDescriptions: typeString function () returns (uint256)[]typeIdentifier st_array$_t_function_internal_nonpayable$__$returns$_t_uint256_$_$dyn_storage_ptr

,
            [
              Value.Integer 10
            ]
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "x" |),
            Some (Value.Integer 9)
          |),
          M.get_name (| "a" |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "y" |),
          M.get_name (| "x" |)
        |) in
      let _ :=
        M.return_ (|
          M.call (|
            M.index_access (|
              M.get_name (| "y" |),
              Some (Value.Integer 9)
            |),
            []
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition a (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          Value.Integer 7
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
