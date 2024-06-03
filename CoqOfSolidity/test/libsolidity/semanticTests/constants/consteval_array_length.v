(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition a : Value.t :=
    Value.Integer 12.

  Definition b : Value.t :=
    Value.Integer 10.

  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "x" ],
          Value.Default
        |) in
      let _ :=
        M.return_ (|
          Value.Tuple [
            M.member_access (|
              M.get_name (| "x" |),
              "length"
            |),
            M.bin_op (|
              "*",
              Value.Tuple [
                M.bin_op (|
                  "/",
                  M.get_name (| "a" |),
                  M.get_name (| "b" |)
                |)
              ],
              M.get_name (| "b" |)
            |)
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
