(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Pragma abicoderv2 *)

(* Contract *)
Module C.
  (* Struct S *)

  Definition f (α : list Value.t) : M :=
    match α with
    | [c] =>
      let _ :=
        M.define (|
          [ "m" ],
          M.get_name (| "c" |)
        |) in
      let _ :=
        M.return_ (|
          Value.Tuple [
            M.member_access (|
              M.index_access (|
                M.get_name (| "m" |),
                Some (Value.Integer 2)
              |),
              "a"
            |),
            M.member_access (|
              M.index_access (|
                M.get_name (| "m" |),
                Some (Value.Integer 1)
              |),
              "b"
            |),
            M.member_access (|
              M.index_access (|
                M.get_name (| "m" |),
                Some (Value.Integer 0)
              |),
              "c"
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
        M.define (|
          [ "m" ],
          M.get_name (| "c" |)
        |) in
      let _ :=
        M.return_ (|
          Value.Tuple [
            M.member_access (|
              M.index_access (|
                M.get_name (| "m" |),
                Some (Value.Integer 2)
              |),
              "a"
            |),
            M.member_access (|
              M.index_access (|
                M.get_name (| "m" |),
                Some (Value.Integer 1)
              |),
              "b"
            |),
            M.member_access (|
              M.index_access (|
                M.get_name (| "m" |),
                Some (Value.Integer 0)
              |),
              "c"
            |)
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
