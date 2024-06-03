(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  (* Struct S *)

  Definition s : Value.t :=
    undefined.

  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.while (|
          WhileKind.While,
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
          let _ :=
             in
          Value.Tuple []
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition g (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "c" |),
          M.get_name (| "s" |)
        |) in
      let _ :=
        M.while (|
          WhileKind.While,
          Value.Bool false,
          let _ :=
             in
          Value.Tuple []
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition h (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.while (|
          WhileKind.While,
          Value.Bool false,
          let _ :=
             in
          Value.Tuple []
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "c" |),
          M.get_name (| "s" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
