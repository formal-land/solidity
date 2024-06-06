(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module root.
  Definition rootFunction (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End root.

(* Contract *)
Module inter1.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End inter1.

(* Contract *)
Module inter2.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End inter2.

(* Contract *)
Module derived.
  Definition g (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.call (|
          M.get_name (| "f" |),
          []
        |) in
      let _ :=
        M.call (|
          M.get_name (| "rootFunction" |),
          []
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End derived.
