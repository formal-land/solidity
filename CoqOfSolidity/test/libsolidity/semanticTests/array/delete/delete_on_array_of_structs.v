(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  (* Struct S *)

  Definition data : Value.t :=
    undefined.

  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "s1" ],
          M.call (|
            M.member_access (|
              M.get_name (| "data" |),
              "push"
            |),
            []
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.member_access (|
            M.get_name (| "s1" |),
            "x"
          |),
          M.bin_op (|
            "**",
            Value.Integer 2,
            Value.Integer 200
          |)
        |) in
      let _ :=
        M.define (|
          [ "s2" ],
          M.call (|
            M.member_access (|
              M.get_name (| "data" |),
              "push"
            |),
            []
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.member_access (|
            M.get_name (| "s2" |),
            "x"
          |),
          M.bin_op (|
            "**",
            Value.Integer 2,
            Value.Integer 200
          |)
        |) in
      let _ :=
        M.un_op (|
          true,
          "delete",
          M.get_name (| "data" |)
        |) in
      let _ :=
        M.return_ (|
          Value.Bool true
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
