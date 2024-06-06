(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module test.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "a" ],
          M.call (|
            Ty.path "ufixed256x80",
            [
              M.bin_op (|
                "/",
                Value.Integer 1,
                Value.Integer 3
              |)
            ]
          |)
        |) in
      let _ :=
        M.get_name (| "a" |) in
      let _ :=
        M.define (|
          [ "b" ],
          M.call (|
            Ty.path "ufixed248x80",
            [
              M.bin_op (|
                "/",
                Value.Integer 1,
                Value.Integer 3
              |)
            ]
          |)
        |) in
      let _ :=
        M.get_name (| "b" |) in
      let _ :=
        M.define (|
          [ "c" ],
          M.call (|
            Ty.path "ufixed8x1",
            [
              M.bin_op (|
                "/",
                Value.Integer 1,
                Value.Integer 3
              |)
            ]
          |)
        |) in
      let _ :=
        M.get_name (| "c" |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End test.
