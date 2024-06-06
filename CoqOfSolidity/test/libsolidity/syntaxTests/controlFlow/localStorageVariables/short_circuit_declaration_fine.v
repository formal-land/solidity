(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  (* Struct S *)

  Definition s : Value.t :=
    undefined.

  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "c" ],
          Value.Default
        |) in
      let _ :=
        M.bin_op (|
          "&&",
          M.member_access (|
            Value.Tuple [
              M.assign (|
                "=",
                M.get_name (| "c" |),
                M.get_name (| "s" |)
              |)
            ],
            "f"
          |),
          Value.Bool false
        |) in
      let _ :=
        M.get_name (| "c" |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition g (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "c" ],
          Value.Default
        |) in
      let _ :=
        M.bin_op (|
          "||",
          M.member_access (|
            Value.Tuple [
              M.assign (|
                "=",
                M.get_name (| "c" |),
                M.get_name (| "s" |)
              |)
            ],
            "f"
          |),
          Value.Bool true
        |) in
      let _ :=
        M.get_name (| "c" |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
