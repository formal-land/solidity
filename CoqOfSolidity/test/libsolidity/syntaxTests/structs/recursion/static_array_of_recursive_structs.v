(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module Test.
  (* Struct RecursiveStruct *)

  Definition func (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "val" ],
          Value.Default
        |) in
      let _ :=
        M.get_name (| "val" |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End Test.
