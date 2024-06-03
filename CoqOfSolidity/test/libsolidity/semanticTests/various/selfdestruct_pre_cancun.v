(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition  (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition terminate (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.call (|
          M.get_name (| "selfdestruct" |),
          [
            M.call (|
              Ty.path "address",
              [
                M.member_access (|
                  M.get_name (| "msg" |),
                  "sender"
                |)
              ]
            |)
          ]
        |) in
      let _ :=
        M.call (|
          M.get_name (| "assert" |),
          [
            Value.Bool false
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.


(* Contract *)
Module D.
  Definition c : Value.t :=
    undefined.

  Definition  (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition deploy_create (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "c" |),
          M.call (|
            FunctionCallOptions NewExpression Ty.path "C"
 [value, ] Value.Integer 1
,
            []
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition deploy_create2 (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "c" |),
          M.call (|
            FunctionCallOptions NewExpression Ty.path "C"
 [value, salt, ] Value.Integer 1, hexString
,
            []
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition terminate (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.call (|
          M.member_access (|
            M.get_name (| "c" |),
            "terminate"
          |),
          []
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition test_create_and_terminate (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.call (|
          M.get_name (| "deploy_create" |),
          []
        |) in
      let _ :=
        M.call (|
          M.get_name (| "assert" |),
          [
            M.call (|
              M.get_name (| "exists" |),
              []
            |)
          ]
        |) in
      let _ :=
        M.call (|
          M.get_name (| "test_balance_after_create" |),
          []
        |) in
      let _ :=
        M.call (|
          M.get_name (| "terminate" |),
          []
        |) in
      let _ :=
        M.call (|
          M.get_name (| "test_balance_after_selfdestruct" |),
          []
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition test_create2_and_terminate (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.call (|
          M.get_name (| "deploy_create2" |),
          []
        |) in
      let _ :=
        M.call (|
          M.get_name (| "assert" |),
          [
            M.call (|
              M.get_name (| "exists" |),
              []
            |)
          ]
        |) in
      let _ :=
        M.call (|
          M.get_name (| "test_balance_after_create" |),
          []
        |) in
      let _ :=
        M.call (|
          M.get_name (| "terminate" |),
          []
        |) in
      let _ :=
        M.call (|
          M.get_name (| "test_balance_after_selfdestruct" |),
          []
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition test_balance_after_create (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.call (|
          M.get_name (| "assert" |),
          [
            M.bin_op (|
              "==",
              M.member_access (|
                M.call (|
                  Ty.path "address",
                  [
                    M.get_name (| "this" |)
                  ]
                |),
                "balance"
              |),
              Value.Integer 0
            |)
          ]
        |) in
      let _ :=
        M.call (|
          M.get_name (| "assert" |),
          [
            M.bin_op (|
              "==",
              M.member_access (|
                M.call (|
                  Ty.path "address",
                  [
                    M.get_name (| "c" |)
                  ]
                |),
                "balance"
              |),
              Value.Integer 1
            |)
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition test_balance_after_selfdestruct (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.call (|
          M.get_name (| "assert" |),
          [
            M.bin_op (|
              "==",
              M.member_access (|
                M.call (|
                  Ty.path "address",
                  [
                    M.get_name (| "this" |)
                  ]
                |),
                "balance"
              |),
              Value.Integer 1
            |)
          ]
        |) in
      let _ :=
        M.call (|
          M.get_name (| "assert" |),
          [
            M.bin_op (|
              "==",
              M.member_access (|
                M.call (|
                  Ty.path "address",
                  [
                    M.get_name (| "c" |)
                  ]
                |),
                "balance"
              |),
              Value.Integer 0
            |)
          ]
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition exists (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.return_ (|
          M.bin_op (|
            "!=",
            M.member_access (|
              M.member_access (|
                M.call (|
                  Ty.path "address",
                  [
                    M.get_name (| "c" |)
                  ]
                |),
                "code"
              |),
              "length"
            |),
            Value.Integer 0
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End D.
