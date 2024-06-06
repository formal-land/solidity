(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Pragma abicoderv2 *)

(* Contract *)
Module Test.
  Definition f (α : list Value.t) : M :=
    match α with
    | [c] =>
      let _ :=
        M.return_ (|
          Value.Tuple [
            M.member_access (|
              M.get_name (| "c" |),
              "length"
            |),
            M.index_access (|
              M.get_name (| "c" |),
              Some (Value.Integer 0)
            |)
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition g (α : list Value.t) : M :=
    match α with
    | [c] =>
      let _ :=
        M.return_ (|
          M.call (|
            M.get_name (| "f" |),
            [
              M.get_name (| "c" |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition h (α : list Value.t) : M :=
    match α with
    | [c, start, end] =>
      let _ :=
        M.return_ (|
          M.call (|
            M.get_name (| "f" |),
            [
              IndexRangeAccess M.get_name (| "c" |) M.get_name (| "start" |) M.get_name (| "end" |)

            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End Test.
