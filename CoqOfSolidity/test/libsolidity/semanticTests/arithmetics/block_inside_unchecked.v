(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        let _ :=
          let _ :=
            M.define (|
              [ "max" ],
              M.member_access (|
                M.call (|
                  M.get_name (| "type" |),
                  [
                    Ty.path "uint"
                  ]
                |),
                "max"
              |)
            |) in
          let _ :=
            M.define (|
              [ "x" ],
              M.bin_op (|
                "+",
                M.get_name (| "max" |),
                Value.Integer 1
              |)
            |) in
          let _ :=
            M.assign (|
              "=",
              M.get_name (| "y" |),
              M.get_name (| "x" |)
            |) in
          Value.Tuple [] in
        Value.Tuple [] in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
