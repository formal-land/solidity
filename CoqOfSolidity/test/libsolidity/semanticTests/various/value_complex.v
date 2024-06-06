(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module helper.
  Definition getBalance (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          M.member_access (|
            M.call (|
              Ty.path "address",
              [
                M.get_name (| "this" |)
              ]
            |),
            "balance"
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End helper.

(* Contract *)
Module test.
  Definition h : Value.t :=
    undefined.

  Definition  (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "h" |),
          M.call (|
            NewExpression (* Beginning of a node! *)
id: 21
src: 212:6:0
nodeType: UserDefinedTypeName
pathNode: (* Beginning of a node! *)
id: 20
src: 212:6:0
nodeType: IdentifierPath
name: helper
nameLocations: [212:6:0, ]
referencedDeclaration: 13

referencedDeclaration: 13
typeDescriptions: typeString contract helpertypeIdentifier st_contract$_helper_$13

,
            []
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition sendAmount (α : list Value.t) : M :=
    match α with
    | [amount] =>
      let _ :=
        M.define (|
          [ "someStackElement" ],
          Value.Integer 20
        |) in
      let _ :=
        M.return_ (|
          M.call (|
            FunctionCallOptions M.member_access (|
              M.get_name (| "h" |),
              "getBalance"
            |) [value, gas, ] M.bin_op (|
              "+",
              M.get_name (| "amount" |),
              Value.Integer 3
            |), Value.Integer 1000
,
            []
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End test.
