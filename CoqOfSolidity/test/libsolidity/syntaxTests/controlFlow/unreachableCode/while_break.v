(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "a" ],
          Value.Integer 0
        |) in
      let _ :=
        M.while (|
          WhileKind.While,
          M.bin_op (|
            "<",
            M.get_name (| "a" |),
            Value.Integer 100
          |),
          let _ :=
            M.un_op (|
              false,
              "++",
              M.get_name (| "a" |)
            |) in
          let _ :=
            M.break (||) in
          let _ :=
            M.un_op (|
              false,
              "--",
              M.get_name (| "a" |)
            |) in
          Value.Tuple []
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
