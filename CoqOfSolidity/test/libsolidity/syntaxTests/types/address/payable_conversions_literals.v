(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "a" ],
          M.call (|
            Ty.path "address",
            [
              Value.Integer 0
            ]
          |)
        |) in
      let _ :=
        M.define (|
          [ "b" ],
          M.call (|
            Ty.path "address",
            [
              Value.Integer 0x00000000219ab540356cBB839Cbe05303d7705Fa
            ]
          |)
        |) in
      let _ :=
        M.define (|
          [ "c" ],
          M.call (|
            Ty.path "address",
            [
              M.call (|
                Ty.path "address",
                [
                  Value.Integer 2
                ]
              |)
            ]
          |)
        |) in
      let _ :=
        M.get_name (| "a" |) in
      let _ :=
        M.get_name (| "b" |) in
      let _ :=
        M.get_name (| "c" |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
