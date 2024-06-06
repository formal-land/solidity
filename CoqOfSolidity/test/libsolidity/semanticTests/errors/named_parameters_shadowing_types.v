(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Pragma abicoderv2 *)

(* Contract *)
Module C.
  (* Enum EnumType *)

  (* Struct StructType *)

  (* Error E1 *)

  (* Error E2 *)

  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.revert (|
          M.call (|
            M.get_name (| "E1" |),
            [
              M.call (|
                M.get_name (| "StructType" |),
                [
                  Value.Integer 42
                ]
              |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition g (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.revert (|
          M.call (|
            M.get_name (| "E2" |),
            [
              M.call (|
                M.get_name (| "StructType" |),
                [
                  Value.Integer 42
                ]
              |),
              M.member_access (|
                M.get_name (| "EnumType" |),
                "B"
              |)
            ]
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
