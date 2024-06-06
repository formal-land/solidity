(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module D.
  Definition x : Value.t :=
    undefined.

  Definition  (α : list Value.t) : M :=
    match α with
    | [a] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "x" |),
          M.get_name (| "a" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End D.

(* Contract *)
Module C.
  Definition createDSalted (α : list Value.t) : M :=
    match α with
    | [salt, arg] =>
      let _ :=
        M.define (|
          [ "predictedAddress" ],
          M.call (|
            Ty.path "address",
            [
              M.call (|
                Ty.path "uint160",
                [
                  M.call (|
                    Ty.path "uint",
                    [
                      M.call (|
                        M.get_name (| "keccak256" |),
                        [
                          M.call (|
                            M.member_access (|
                              M.get_name (| "abi" |),
                              "encodePacked"
                            |),
                            [
                              M.call (|
                                Ty.path "bytes1",
                                [
                                  Value.Integer 0xff
                                ]
                              |),
                              M.call (|
                                Ty.path "address",
                                [
                                  M.get_name (| "this" |)
                                ]
                              |),
                              M.get_name (| "salt" |),
                              M.call (|
                                M.get_name (| "keccak256" |),
                                [
                                  M.call (|
                                    M.member_access (|
                                      M.get_name (| "abi" |),
                                      "encodePacked"
                                    |),
                                    [
                                      M.member_access (|
                                        M.call (|
                                          M.get_name (| "type" |),
                                          [
                                            M.get_name (| "D" |)
                                          ]
                                        |),
                                        "creationCode"
                                      |),
                                      M.get_name (| "arg" |)
                                    ]
                                  |)
                                ]
                              |)
                            ]
                          |)
                        ]
                      |)
                    ]
                  |)
                ]
              |)
            ]
          |)
        |) in
      let _ :=
        M.define (|
          [ "d" ],
          M.call (|
            FunctionCallOptions NewExpression (* Beginning of a node! *)
id: 60
src: 457:1:0
nodeType: UserDefinedTypeName
pathNode: (* Beginning of a node! *)
id: 59
src: 457:1:0
nodeType: IdentifierPath
name: D
nameLocations: [457:1:0, ]
referencedDeclaration: 13

referencedDeclaration: 13
typeDescriptions: typeString contract DtypeIdentifier st_contract$_D_$13

 [salt, ] M.get_name (| "salt" |)
,
            [
              M.get_name (| "arg" |)
            ]
          |)
        |) in
      let _ :=
        M.call (|
          M.get_name (| "require" |),
          [
            M.bin_op (|
              "==",
              M.call (|
                Ty.path "address",
                [
                  M.get_name (| "d" |)
                ]
              |),
              M.get_name (| "predictedAddress" |)
            |),
            Value.String "Address mismatch."
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
