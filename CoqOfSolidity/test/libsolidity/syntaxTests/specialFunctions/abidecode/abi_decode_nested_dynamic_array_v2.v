(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Pragma abicoderv2 *)

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.call (|
          M.member_access (|
            M.get_name (| "abi" |),
            "decode"
          |),
          [
            Value.String "1234",
            Value.Tuple [
              M.index_access (|
                M.index_access (|
                  Ty.path "uint",
                  None
                |),
                Some (Value.Integer 3)
              |)
            ]
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
