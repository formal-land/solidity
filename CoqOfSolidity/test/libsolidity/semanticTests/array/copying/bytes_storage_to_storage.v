(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module c.
  Definition a : Value.t :=
    undefined.

  Definition b : Value.t :=
    undefined.

  Definition f (α : list Value.t) : M :=
    match α with
    | [len] =>
      let _ :=
        M.define (|
          [ "x" ],
          M.call (|
            NewExpression Ty.path "bytes"
,
            [
              M.get_name (| "len" |)
            ]
          |)
        |) in
      let _ :=
        (* Beginning of a node! *)
id: 40
src: 145:66:0
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
body: M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "x" |),
            Some (M.get_name (| "i" |))
          |),
          M.call (|
            Ty.path "bytes1",
            [
              M.call (|
                Ty.path "uint8",
                [
                  M.get_name (| "i" |)
                ]
              |)
            ]
          |)
        |)
isSimpleCounterLoop: 1
 in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "a" |),
          M.get_name (| "x" |)
        |) in
      let _ :=
        (* Beginning of a node! *)
id: 65
src: 236:63:0
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
          M.get_name (| "assert" |),
          [
            M.bin_op (|
              "==",
              M.index_access (|
                M.get_name (| "a" |),
                Some (M.get_name (| "i" |))
              |),
              M.index_access (|
                M.get_name (| "x" |),
                Some (M.get_name (| "i" |))
              |)
            |)
          ]
        |)
isSimpleCounterLoop: 1
 in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "b" |),
          M.get_name (| "a" |)
        |) in
      let _ :=
        (* Beginning of a node! *)
id: 90
src: 324:63:0
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
          M.get_name (| "assert" |),
          [
            M.bin_op (|
              "==",
              M.index_access (|
                M.get_name (| "b" |),
                Some (M.get_name (| "i" |))
              |),
              M.index_access (|
                M.get_name (| "x" |),
                Some (M.get_name (| "i" |))
              |)
            |)
          ]
        |)
isSimpleCounterLoop: 1
 in
      let _ :=
        M.return_ (|
          M.get_name (| "b" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End c.
