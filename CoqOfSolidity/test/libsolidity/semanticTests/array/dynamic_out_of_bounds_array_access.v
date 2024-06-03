(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module c.
  Definition data : Value.t :=
    undefined.

  Definition enlarge (α : list Value.t) : M :=
    match α with
    | [amount] =>
      let _ :=
        M.while (|
          WhileKind.While,
          M.bin_op (|
            "<",
            M.member_access (|
              M.get_name (| "data" |),
              "length"
            |),
            M.get_name (| "amount" |)
          |),
          M.call (|
            M.member_access (|
              M.get_name (| "data" |),
              "push"
            |),
            []
          |)
        |) in
      let _ :=
        M.return_ (|
          M.member_access (|
            M.get_name (| "data" |),
            "length"
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition set (α : list Value.t) : M :=
    match α with
    | [index, value] =>
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "data" |),
            Some (M.get_name (| "index" |))
          |),
          M.get_name (| "value" |)
        |) in
      let _ :=
        M.return_ (|
          Value.Bool true
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition get (α : list Value.t) : M :=
    match α with
    | [index] =>
      let _ :=
        M.return_ (|
          M.index_access (|
            M.get_name (| "data" |),
            Some (M.get_name (| "index" |))
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition length (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          M.member_access (|
            M.get_name (| "data" |),
            "length"
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End c.
