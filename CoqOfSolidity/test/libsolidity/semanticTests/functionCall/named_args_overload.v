(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          Value.Integer 0
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition f (α : list Value.t) : M :=
    match α with
    | [a] =>
      let _ :=
        M.return_ (|
          M.get_name (| "a" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition f (α : list Value.t) : M :=
    match α with
    | [a, b] =>
      let _ :=
        M.return_ (|
          M.bin_op (|
            "+",
            M.get_name (| "a" |),
            M.get_name (| "b" |)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition f (α : list Value.t) : M :=
    match α with
    | [a, b, c] =>
      let _ :=
        M.return_ (|
          M.bin_op (|
            "+",
            M.bin_op (|
              "+",
              M.get_name (| "a" |),
              M.get_name (| "b" |)
            |),
            M.get_name (| "c" |)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition call (α : list Value.t) : M :=
    match α with
    | [num] =>
      let _ :=
        if M.bin_op (|
          "==",
          M.get_name (| "num" |),
          Value.Integer 0
        |) then
          M.return_ (|
            M.call (|
              M.get_name (| "f" |),
              []
            |)
          |)
        else
          Value.Tuple [] in
      let _ :=
        if M.bin_op (|
          "==",
          M.get_name (| "num" |),
          Value.Integer 1
        |) then
          M.return_ (|
            M.call (|
              M.get_name (| "f" |),
              [
                Value.Integer 1
              ]
            |)
          |)
        else
          Value.Tuple [] in
      let _ :=
        if M.bin_op (|
          "==",
          M.get_name (| "num" |),
          Value.Integer 2
        |) then
          M.return_ (|
            M.call (|
              M.get_name (| "f" |),
              [
                Value.Integer 1,
                Value.Integer 2
              ]
            |)
          |)
        else
          Value.Tuple [] in
      let _ :=
        if M.bin_op (|
          "==",
          M.get_name (| "num" |),
          Value.Integer 3
        |) then
          M.return_ (|
            M.call (|
              M.get_name (| "f" |),
              [
                Value.Integer 1,
                Value.Integer 2,
                Value.Integer 3
              ]
            |)
          |)
        else
          Value.Tuple [] in
      let _ :=
        if M.bin_op (|
          "==",
          M.get_name (| "num" |),
          Value.Integer 4
        |) then
          M.return_ (|
            M.call (|
              M.get_name (| "f" |),
              [
                Value.Integer 5,
                Value.Integer 1,
                Value.Integer 2
              ]
            |)
          |)
        else
          Value.Tuple [] in
      let _ :=
        M.return_ (|
          Value.Integer 500
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
