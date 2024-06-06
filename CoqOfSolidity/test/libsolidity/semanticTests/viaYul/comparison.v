(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [a] =>
      let _ :=
        M.return_ (|
          M.bin_op (|
            "==",
            M.get_name (| "a" |),
            M.call (|
              Ty.path "address",
              [
                Value.Integer 0
              ]
            |)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition g (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          M.bin_op (|
            "==",
            M.call (|
              Ty.path "bytes3",
              [
                Value.String "abc"
              ]
            |),
            M.call (|
              Ty.path "bytes4",
              [
                Value.String "abc"
              ]
            |)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition lt (α : list Value.t) : M :=
    match α with
    | [a, b] =>
      let _ :=
        M.return_ (|
          M.bin_op (|
            "<",
            M.get_name (| "a" |),
            M.get_name (| "b" |)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition slt (α : list Value.t) : M :=
    match α with
    | [a, b] =>
      let _ :=
        M.return_ (|
          M.bin_op (|
            "<",
            M.get_name (| "a" |),
            M.get_name (| "b" |)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition lte (α : list Value.t) : M :=
    match α with
    | [a, b] =>
      let _ :=
        M.return_ (|
          M.bin_op (|
            "<=",
            M.get_name (| "a" |),
            M.get_name (| "b" |)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition slte (α : list Value.t) : M :=
    match α with
    | [a, b] =>
      let _ :=
        M.return_ (|
          M.bin_op (|
            "<=",
            M.get_name (| "a" |),
            M.get_name (| "b" |)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition gt (α : list Value.t) : M :=
    match α with
    | [a, b] =>
      let _ :=
        M.return_ (|
          M.bin_op (|
            ">",
            M.get_name (| "a" |),
            M.get_name (| "b" |)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition sgt (α : list Value.t) : M :=
    match α with
    | [a, b] =>
      let _ :=
        M.return_ (|
          M.bin_op (|
            ">",
            M.get_name (| "a" |),
            M.get_name (| "b" |)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition gte (α : list Value.t) : M :=
    match α with
    | [a, b] =>
      let _ :=
        M.return_ (|
          M.bin_op (|
            ">=",
            M.get_name (| "a" |),
            M.get_name (| "b" |)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition sgte (α : list Value.t) : M :=
    match α with
    | [a, b] =>
      let _ :=
        M.return_ (|
          M.bin_op (|
            ">=",
            M.get_name (| "a" |),
            M.get_name (| "b" |)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition eq (α : list Value.t) : M :=
    match α with
    | [a, b] =>
      let _ :=
        M.return_ (|
          M.bin_op (|
            "==",
            M.get_name (| "a" |),
            M.get_name (| "b" |)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition neq (α : list Value.t) : M :=
    match α with
    | [a, b] =>
      let _ :=
        M.return_ (|
          M.bin_op (|
            "!=",
            M.get_name (| "a" |),
            M.get_name (| "b" |)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
