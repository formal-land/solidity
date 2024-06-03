(* Generated by coq-of-solidity *)
Require Import CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition simple : Value.t :=
    undefined.

  Definition cleanup : Value.t :=
    undefined.

  Definition str : Value.t :=
    undefined.

  Definition twodim : Value.t :=
    undefined.

  Definition test_simple (α : list Value.t) : M :=
    match α with
    | [_off] =>
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "simple" |),
            Some (M.bin_op (|
              "+",
              M.get_name (| "_off" |),
              Value.Integer 2
            |))
          |),
          Value.Integer 3
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "simple" |),
            Some (M.bin_op (|
              "+",
              M.get_name (| "_off" |),
              Value.Integer 3
            |))
          |),
          Value.Integer 4
        |) in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "simple" |),
            Some (M.member_access (|
              M.call (|
                M.get_name (| "type" |),
                [
                  Ty.path "uint256"
                ]
              |),
              "max"
            |))
          |),
          Value.Integer 5
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "_c" |),
          M.index_access (|
            M.get_name (| "simple" |),
            Some (M.member_access (|
              M.call (|
                M.get_name (| "type" |),
                [
                  Ty.path "uint256"
                ]
              |),
              "max"
            |))
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "_b" |),
          M.index_access (|
            M.get_name (| "simple" |),
            Some (M.bin_op (|
              "+",
              Value.Integer 3,
              M.get_name (| "_off" |)
            |))
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "_a" |),
          M.index_access (|
            M.get_name (| "simple" |),
            Some (M.bin_op (|
              "+",
              Value.Integer 2,
              M.get_name (| "_off" |)
            |))
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition test_cleanup (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "x" ],
          Value.Default
        |) in
      let _ :=
        (* Beginning of a node! *)
id: 90
src: 534:28:0
nodeType: InlineAssembly
AST: TODO YulJson
externalReferences: src: 545:1:0declaration: 88isSlot: isOffset: alueSize: 
evmVersion: cancun
 in
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "cleanup" |),
            Some (M.get_name (| "x" |))
          |),
          Value.Integer 3
        |) in
      let _ :=
        M.return_ (|
          M.bin_op (|
            "==",
            M.index_access (|
              M.get_name (| "cleanup" |),
              Some (Value.Integer 1)
            |),
            Value.Integer 3
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition test_str (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.get_name (| "str" |),
            Some (Value.String "abc")
          |),
          Value.Integer 3
        |) in
      let _ :=
        M.define (|
          [ "s" ],
          Value.String "abc"
        |) in
      let _ :=
        M.return_ (|
          M.bin_op (|
            "==",
            M.index_access (|
              M.get_name (| "str" |),
              Some (M.get_name (| "s" |))
            |),
            Value.Integer 3
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition test_twodim (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.assign (|
          "=",
          M.index_access (|
            M.index_access (|
              M.get_name (| "twodim" |),
              Some (Value.Integer 2)
            |),
            Some (Value.Integer 3)
          |),
          Value.Integer 3
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "a" |),
          M.index_access (|
            M.index_access (|
              M.get_name (| "twodim" |),
              Some (Value.Integer 3)
            |),
            Some (Value.Integer 2)
          |)
        |) in
      let _ :=
        M.assign (|
          "=",
          M.get_name (| "b" |),
          M.index_access (|
            M.index_access (|
              M.get_name (| "twodim" |),
              Some (Value.Integer 2)
            |),
            Some (Value.Integer 3)
          |)
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
