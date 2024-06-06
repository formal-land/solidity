(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "b1" ],
          Value.Integer 0
        |) in
      let _ :=
        M.define (|
          [ "b2" ],
          Value.Integer 0
        |) in
      let _ :=
        M.define (|
          [ "b3" ],
          Value.Integer 0
        |) in
      let _ :=
        M.define (|
          [ "b4" ],
          Value.Integer 0
        |) in
      let _ :=
        M.define (|
          [ "b8" ],
          Value.Integer 0
        |) in
      let _ :=
        M.define (|
          [ "b16" ],
          Value.Integer 0
        |) in
      let _ :=
        M.define (|
          [ "b32" ],
          Value.Integer 0
        |) in
      let _ :=
        M.get_name (| "b1" |) in
      let _ :=
        M.get_name (| "b2" |) in
      let _ :=
        M.get_name (| "b3" |) in
      let _ :=
        M.get_name (| "b4" |) in
      let _ :=
        M.get_name (| "b8" |) in
      let _ :=
        M.get_name (| "b16" |) in
      let _ :=
        M.get_name (| "b32" |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition g (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "b1" ],
          Value.Integer 0x000
        |) in
      let _ :=
        M.define (|
          [ "b2" ],
          Value.Integer 0x00000
        |) in
      let _ :=
        M.define (|
          [ "b3" ],
          Value.Integer 0x0000000
        |) in
      let _ :=
        M.define (|
          [ "b4" ],
          Value.Integer 0x000000000
        |) in
      let _ :=
        M.define (|
          [ "b8" ],
          Value.Integer 0x00000000000000000
        |) in
      let _ :=
        M.get_name (| "b1" |) in
      let _ :=
        M.get_name (| "b2" |) in
      let _ :=
        M.get_name (| "b3" |) in
      let _ :=
        M.get_name (| "b4" |) in
      let _ :=
        M.get_name (| "b8" |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition h (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "b1" ],
          Value.Integer 0x0
        |) in
      let _ :=
        M.define (|
          [ "b2" ],
          Value.Integer 0x0
        |) in
      let _ :=
        M.define (|
          [ "b3" ],
          Value.Integer 0x0
        |) in
      let _ :=
        M.define (|
          [ "b4" ],
          Value.Integer 0x0
        |) in
      let _ :=
        M.define (|
          [ "b8" ],
          Value.Integer 0x0
        |) in
      let _ :=
        M.define (|
          [ "b16" ],
          Value.Integer 0x0
        |) in
      let _ :=
        M.define (|
          [ "b32" ],
          Value.Integer 0x0
        |) in
      let _ :=
        M.get_name (| "b1" |) in
      let _ :=
        M.get_name (| "b2" |) in
      let _ :=
        M.get_name (| "b3" |) in
      let _ :=
        M.get_name (| "b4" |) in
      let _ :=
        M.get_name (| "b8" |) in
      let _ :=
        M.get_name (| "b16" |) in
      let _ :=
        M.get_name (| "b32" |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
