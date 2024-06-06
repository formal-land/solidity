(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module test.
  Definition data1 : Value.t :=
    undefined.

  Definition f (α : list Value.t) : M :=
    match α with
    | [cond] =>
      let _ :=
        M.define (|
          [ "x" ],
          Value.Default
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "x" |),
            Some (Value.Integer 0)
          |),
          Value.String "aa"
        |) in
      let _ :=
        M.define (|
          [ "y" ],
          Value.Default
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "y" |),
            Some (Value.Integer 0)
          |),
          Value.String "bb"
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "data1" |),
          Conditional M.get_name (| "cond" |) M.get_name (| "x" |) M.get_name (| "y" |)

        |) in
      let _ :=
        M.define (|
          [ "ret" ],
          Value.Integer 0
        |) in
      let _ :=
        if M.bin_op (|
          "==",
          M.index_access (|
            M.get_name (| "data1" |),
            Some (Value.Integer 0)
          |),
          Value.String "aa"
        |) then
          let _ :=
            M.assign (|
              "=",
              M.get_name (| "ret" |),
              Value.Integer 1
            |) in
          Value.Tuple []
        else
          Value.Tuple [] in
      let _ :=
        if M.bin_op (|
          "==",
          M.index_access (|
            M.get_name (| "data1" |),
            Some (Value.Integer 0)
          |),
          Value.String "bb"
        |) then
          let _ :=
            M.assign (|
              "=",
              M.get_name (| "ret" |),
              Value.Integer 2
            |) in
          Value.Tuple []
        else
          Value.Tuple [] in
      let _ :=
        M.return_ (|
          M.get_name (| "ret" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End test.
