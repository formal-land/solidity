(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module test.
  Definition  (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "x" ],
          Value.Integer 3
        |) in
      let _ :=
        M.define (|
          [ "y" ],
          M.un_op (|
            true,
            "-",
            Value.Integer 4
          |)
        |) in
      let _ :=
        M.bin_op (|
          "**",
          M.get_name (| "y" |),
          M.get_name (| "x" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "x" ],
          Value.Integer 3
        |) in
      let _ :=
        M.define (|
          [ "y" ],
          Value.Integer 4
        |) in
      let _ :=
        M.bin_op (|
          "**",
          M.get_name (| "x" |),
          M.get_name (| "y" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition g (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "x" ],
          Value.Integer 3
        |) in
      let _ :=
        M.define (|
          [ "y" ],
          Value.Integer 4
        |) in
      let _ :=
        M.bin_op (|
          "**",
          M.get_name (| "x" |),
          M.get_name (| "y" |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End test.
