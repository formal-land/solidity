(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module I.
  Definition set (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End I.

(* Contract *)
Module A.
  Definition a : Value.t :=
    undefined.

  Definition set (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "a" |),
          Value.Integer 1
        |) in
      let _ :=
        M.call (|
          M.member_access (|
            M.get_name (| "super" |),
            "set"
          |),
          []
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "a" |),
          Value.Integer 2
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End A.

(* Contract *)
Module B.
  Definition b : Value.t :=
    undefined.

  Definition set (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "b" |),
          Value.Integer 1
        |) in
      let _ :=
        M.call (|
          M.member_access (|
            M.get_name (| "super" |),
            "set"
          |),
          []
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "b" |),
          Value.Integer 2
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End B.

(* Contract *)
Module X.
  Definition set (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.call (|
          M.member_access (|
            M.get_name (| "super" |),
            "set"
          |),
          []
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End X.
