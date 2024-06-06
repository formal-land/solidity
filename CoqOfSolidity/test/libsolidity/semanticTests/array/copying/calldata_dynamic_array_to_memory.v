(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Pragma abicoderv2 *)

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [a] =>
      let _ :=
        M.define (|
          [ "m" ],
          M.index_access (|
            M.get_name (| "a" |),
            Some (Value.Integer 0)
          |)
        |) in
      let _ :=
        M.return_ (|
          Value.Tuple [
            M.member_access (|
              M.get_name (| "a" |),
              "length"
            |),
            M.get_name (| "m" |)
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
