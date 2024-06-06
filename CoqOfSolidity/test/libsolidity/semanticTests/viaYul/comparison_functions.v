(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition internal1 (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          Value.Bool true
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition internal2 (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          Value.Bool false
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition equal (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "invalid" ],
          Value.Default
        |) in
      let _ :=
        M.un_op (|
          true,
          "delete",
          M.get_name (| "invalid" |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "same" |),
          M.bin_op (|
            "==",
            M.get_name (| "internal1" |),
            M.get_name (| "internal1" |)
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "diff" |),
          M.bin_op (|
            "==",
            M.get_name (| "internal1" |),
            M.get_name (| "internal2" |)
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "inv" |),
          M.bin_op (|
            "==",
            M.get_name (| "internal1" |),
            M.get_name (| "invalid" |)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition unequal (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "invalid" ],
          Value.Default
        |) in
      let _ :=
        M.un_op (|
          true,
          "delete",
          M.get_name (| "invalid" |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "same" |),
          M.bin_op (|
            "!=",
            M.get_name (| "internal1" |),
            M.get_name (| "internal1" |)
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "diff" |),
          M.bin_op (|
            "!=",
            M.get_name (| "internal1" |),
            M.get_name (| "internal2" |)
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "inv" |),
          M.bin_op (|
            "!=",
            M.get_name (| "internal1" |),
            M.get_name (| "invalid" |)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
