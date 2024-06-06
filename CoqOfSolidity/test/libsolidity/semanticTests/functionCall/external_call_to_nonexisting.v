(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Interface *)
Module I.
  Definition a (α : list Value.t) : M :=
    match α with
    | [] =>
      not implemented
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition b (α : list Value.t) : M :=
    match α with
    | [] =>
      not implemented
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition c (α : list Value.t) : M :=
    match α with
    | [] =>
      not implemented
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition x (α : list Value.t) : M :=
    match α with
    | [] =>
      not implemented
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition y (α : list Value.t) : M :=
    match α with
    | [] =>
      not implemented
    | _ => M.impossible "invalid number of parameters"
    end.
End I.

(* Contract *)
Module C.
  Definition i : Value.t :=
    M.call (|
      M.get_name (| "I" |),
      [
        M.call (|
          Ty.path "address",
          [
            Value.Integer 0xcafecafe
          ]
        |)
      ]
    |).

  Definition  (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition f (α : list Value.t) : M :=
    match α with
    | [c] =>
      let _ :=
        if M.bin_op (|
          "==",
          M.get_name (| "c" |),
          Value.Integer 0
        |) then
          M.call (|
            M.member_access (|
              M.get_name (| "i" |),
              "a"
            |),
            []
          |)
        else
          if M.bin_op (|
            "==",
            M.get_name (| "c" |),
            Value.Integer 1
          |) then
            M.call (|
              M.member_access (|
                M.get_name (| "i" |),
                "b"
              |),
              []
            |)
          else
            if M.bin_op (|
              "==",
              M.get_name (| "c" |),
              Value.Integer 2
            |) then
              M.call (|
                M.member_access (|
                  M.get_name (| "i" |),
                  "c"
                |),
                []
              |)
            else
              if M.bin_op (|
                "==",
                M.get_name (| "c" |),
                Value.Integer 3
              |) then
                M.call (|
                  FunctionCallOptions M.member_access (|
                    M.get_name (| "i" |),
                    "c"
                  |) [value, ] Value.Integer 1
,
                  []
                |)
              else
                if M.bin_op (|
                  "==",
                  M.get_name (| "c" |),
                  Value.Integer 4
                |) then
                  M.call (|
                    M.member_access (|
                      M.get_name (| "i" |),
                      "x"
                    |),
                    []
                  |)
                else
                  if M.bin_op (|
                    "==",
                    M.get_name (| "c" |),
                    Value.Integer 5
                  |) then
                    M.call (|
                      M.member_access (|
                        M.get_name (| "i" |),
                        "y"
                      |),
                      []
                    |)
                  else
                    Value.Tuple [] in
      let _ :=
        M.return_ (|
          M.bin_op (|
            "+",
            Value.Integer 1,
            M.get_name (| "c" |)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
