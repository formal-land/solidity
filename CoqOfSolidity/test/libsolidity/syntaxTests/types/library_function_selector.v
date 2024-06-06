(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Library *)
Module L.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition g (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition h (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End L.

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "a" |),
          M.member_access (|
            M.member_access (|
              M.get_name (| "L" |),
              "f"
            |),
            "selector"
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "b" |),
          M.member_access (|
            M.member_access (|
              M.get_name (| "L" |),
              "g"
            |),
            "selector"
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "c" |),
          M.member_access (|
            M.member_access (|
              M.get_name (| "L" |),
              "h"
            |),
            "selector"
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "d" |),
          M.member_access (|
            M.member_access (|
              M.get_name (| "L" |),
              "h"
            |),
            "selector"
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
