(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module test.
  Definition f (α : list Value.t) : M :=
    match α with
    | [seq] =>
      let _ :=
        M.define (|
          [ "i" ],
          Value.Integer 0
        |) in
      let _ :=
        M.define (|
          [ "sum" ],
          Value.Integer 0
        |) in
      let _ :=
        M.while (|
          WhileKind.While,
          M.bin_op (|
            "<",
            M.get_name (| "i" |),
            M.member_access (|
              M.get_name (| "seq" |),
              "length"
            |)
          |),
          let _ :=
            M.define (|
              [ "idx" ],
              M.get_name (| "i" |)
            |) in
          let _ :=
            if M.bin_op (|
              ">=",
              M.get_name (| "idx" |),
              Value.Integer 10
            |) then
              M.break (||)
            else
              Value.Tuple [] in
          let _ :=
            M.define (|
              [ "x" ],
              M.index_access (|
                M.get_name (| "seq" |),
                Some (M.get_name (| "idx" |))
              |)
            |) in
          let _ :=
            if M.bin_op (|
              ">=",
              M.get_name (| "x" |),
              Value.Integer 1000
            |) then
              let _ :=
                M.define (|
                  [ "n" ],
                  M.bin_op (|
                    "+",
                    M.get_name (| "i" |),
                    Value.Integer 1
                  |)
                |) in
              let _ :=
                M.assign (|
                  "=",
                  M.get_name (| "i" |),
                  M.get_name (| "n" |)
                |) in
              let _ :=
                M.continue (||) in
              Value.Tuple []
            else
              let _ :=
                M.define (|
                  [ "y" ],
                  M.bin_op (|
                    "+",
                    M.get_name (| "sum" |),
                    M.get_name (| "x" |)
                  |)
                |) in
              let _ :=
                M.assign (|
                  "=",
                  M.get_name (| "sum" |),
                  M.get_name (| "y" |)
                |) in
              Value.Tuple [] in
          let _ :=
            if M.bin_op (|
              ">=",
              M.get_name (| "sum" |),
              Value.Integer 500
            |) then
              M.return_ (|
                M.get_name (| "sum" |)
              |)
            else
              Value.Tuple [] in
          let _ :=
            M.un_op (|
              false,
              "++",
              M.get_name (| "i" |)
            |) in
          Value.Tuple []
        |) in
      let _ :=
        M.return_ (|
          M.get_name (| "sum" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End test.
