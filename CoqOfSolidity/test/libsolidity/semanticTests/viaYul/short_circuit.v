(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition or (α : list Value.t) : M :=
    match α with
    | [x] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "t" |),
          Value.Tuple [
            M.bin_op (|
              "||",
              M.bin_op (|
                "==",
                M.get_name (| "x" |),
                Value.Integer 0
              |),
              Value.Tuple [
                M.bin_op (|
                  ">",
                  Value.Tuple [
                    M.assign (|
                      "=",
                      M.get_name (| "x" |),
                      Value.Integer 8
                    |)
                  ],
                  Value.Integer 0
                |)
              ]
            |)
          ]
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "y" |),
          M.get_name (| "x" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition and (α : list Value.t) : M :=
    match α with
    | [x] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "t" |),
          Value.Tuple [
            M.bin_op (|
              "&&",
              M.bin_op (|
                "==",
                M.get_name (| "x" |),
                Value.Integer 0
              |),
              Value.Tuple [
                M.bin_op (|
                  ">",
                  Value.Tuple [
                    M.assign (|
                      "=",
                      M.get_name (| "x" |),
                      Value.Integer 8
                    |)
                  ],
                  Value.Integer 0
                |)
              ]
            |)
          ]
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "y" |),
          M.get_name (| "x" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
