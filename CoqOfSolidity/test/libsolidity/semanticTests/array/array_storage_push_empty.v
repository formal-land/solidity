(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition storageArray : Value.t :=
    undefined.

  Definition pushEmpty (α : list Value.t) : M :=
    match α with
    | [len] =>
      let _ :=
        M.while (|
          WhileKind.While,
          M.bin_op (|
            "<",
            M.member_access (|
              M.get_name (| "storageArray" |),
              "length"
            |),
            M.get_name (| "len" |)
          |),
          M.call (|
            M.member_access (|
              M.get_name (| "storageArray" |),
              "push"
            |),
            []
          |)
        |) in
      let _ :=
        (* Beginning of a node! *)
id: 36
src: 169:72:0
nodeType: ForStatement
initializationExpression: M.define (|
          [ "i" ],
          Value.Integer 0
        |)
condition: M.bin_op (|
          "<",
          M.get_name (| "i" |),
          M.get_name (| "len" |)
        |)
loopExpression: M.un_op (|
          false,
          "++",
          M.get_name (| "i" |)
        |)
body: M.call (|
          M.get_name (| "require" |),
          [
            M.bin_op (|
              "==",
              M.index_access (|
                M.get_name (| "storageArray" |),
                Some (M.get_name (| "i" |))
              |),
              Value.Integer 0
            |)
          ]
        |)
isSimpleCounterLoop: 1
 in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
