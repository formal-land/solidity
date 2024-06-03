(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition add (α : list Value.t) : M :=
    match α with
    | [a, b] =>
      let _ :=
        let _ :=
          M.return_ (|
            M.bin_op (|
              "+",
              M.get_name (| "a" |),
              M.get_name (| "b" |)
            |)
          |) in
        Value.Tuple [] in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition f (α : list Value.t) : M :=
    match α with
    | [a] =>
      let _ :=
        M.return_ (|
          M.bin_op (|
            "+",
            M.call (|
              M.get_name (| "add" |),
              [
                M.get_name (| "a" |),
                Value.Integer 0x100
              ]
            |),
            Value.Integer 0x100
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
