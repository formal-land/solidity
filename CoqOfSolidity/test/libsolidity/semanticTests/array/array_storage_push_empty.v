(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition storageArray : Value.t :=
    undefined.

  Definition pushEmpty (α : list Value.t) : M :=
    match α with
    | [len] =>
      let _ :=
        M.while (|
          WhileKind.While,
          M.bin_op (|
            "<",
            M.member_access (|
              M.get_name (| "storageArray" |),
              "length"
            |),
            M.get_name (| "len" |)
          |),
          M.call (|
            M.member_access (|
              M.get_name (| "storageArray" |),
              "push"
            |),
            []
          |)
        |) in
      let _ :=
        M.for_ (|
          M.define (|
            [ "i" ],
            Value.Integer 0
          |),
          M.bin_op (|
            "<",
            M.get_name (| "i" |),
            M.get_name (| "len" |)
          |),
          M.un_op (|
            false,
            "++",
            M.get_name (| "i" |)
          |),
          M.call (|
            M.get_name (| "require" |),
            [
              M.bin_op (|
                "==",
                M.index_access (|
                  M.get_name (| "storageArray" |),
                  Some (M.get_name (| "i" |))
                |),
                Value.Integer 0
              |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
