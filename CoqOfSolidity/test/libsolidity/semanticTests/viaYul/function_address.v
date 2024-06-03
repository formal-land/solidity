(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          M.member_access (|
            M.member_access (|
              M.get_name (| "this" |),
              "f"
            |),
            "address"
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition g (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          M.bin_op (|
            "==",
            M.member_access (|
              M.member_access (|
                M.get_name (| "this" |),
                "f"
              |),
              "address"
            |),
            M.call (|
              Ty.path "address",
              [
                M.get_name (| "this" |)
              ]
            |)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition h (α : list Value.t) : M :=
    match α with
    | [a] =>
      let _ :=
        M.return_ (|
          M.member_access (|
            M.get_name (| "a" |),
            "address"
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
