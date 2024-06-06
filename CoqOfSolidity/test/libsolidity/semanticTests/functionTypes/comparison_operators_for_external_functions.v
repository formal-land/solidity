(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition f (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition g (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition h (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition i (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition comparison_operators_for_external_functions (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.call (|
          M.get_name (| "assert" |),
          [
            M.bin_op (|
              "&&",
              M.bin_op (|
                "&&",
                M.bin_op (|
                  "&&",
                  M.bin_op (|
                    "&&",
                    M.bin_op (|
                      "&&",
                      M.bin_op (|
                        "&&",
                        M.bin_op (|
                          "&&",
                          M.bin_op (|
                            "&&",
                            M.bin_op (|
                              "&&",
                              M.bin_op (|
                                "!=",
                                M.member_access (|
                                  M.get_name (| "this" |),
                                  "f"
                                |),
                                M.member_access (|
                                  M.get_name (| "this" |),
                                  "g"
                                |)
                              |),
                              M.bin_op (|
                                "!=",
                                M.member_access (|
                                  M.get_name (| "this" |),
                                  "f"
                                |),
                                M.member_access (|
                                  M.get_name (| "this" |),
                                  "h"
                                |)
                              |)
                            |),
                            M.bin_op (|
                              "!=",
                              M.member_access (|
                                M.get_name (| "this" |),
                                "f"
                              |),
                              M.member_access (|
                                M.get_name (| "this" |),
                                "i"
                              |)
                            |)
                          |),
                          M.bin_op (|
                            "!=",
                            M.member_access (|
                              M.get_name (| "this" |),
                              "g"
                            |),
                            M.member_access (|
                              M.get_name (| "this" |),
                              "h"
                            |)
                          |)
                        |),
                        M.bin_op (|
                          "!=",
                          M.member_access (|
                            M.get_name (| "this" |),
                            "g"
                          |),
                          M.member_access (|
                            M.get_name (| "this" |),
                            "i"
                          |)
                        |)
                      |),
                      M.bin_op (|
                        "!=",
                        M.member_access (|
                          M.get_name (| "this" |),
                          "h"
                        |),
                        M.member_access (|
                          M.get_name (| "this" |),
                          "i"
                        |)
                      |)
                    |),
                    M.bin_op (|
                      "==",
                      M.member_access (|
                        M.get_name (| "this" |),
                        "f"
                      |),
                      M.member_access (|
                        M.get_name (| "this" |),
                        "f"
                      |)
                    |)
                  |),
                  M.bin_op (|
                    "==",
                    M.member_access (|
                      M.get_name (| "this" |),
                      "g"
                    |),
                    M.member_access (|
                      M.get_name (| "this" |),
                      "g"
                    |)
                  |)
                |),
                M.bin_op (|
                  "==",
                  M.member_access (|
                    M.get_name (| "this" |),
                    "h"
                  |),
                  M.member_access (|
                    M.get_name (| "this" |),
                    "h"
                  |)
                |)
              |),
              M.bin_op (|
                "==",
                M.member_access (|
                  M.get_name (| "this" |),
                  "i"
                |),
                M.member_access (|
                  M.get_name (| "this" |),
                  "i"
                |)
              |)
            |)
          ]
        |) in
      let _ :=
        M.return_ (|
          Value.Bool true
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition comparison_operators_for_local_external_function_pointers (α : list Value.t) : M :=
    match α with
    | [] =>
      let _ :=
        M.define (|
          [ "f_local" ],
          M.member_access (|
            M.get_name (| "this" |),
            "f"
          |)
        |) in
      let _ :=
        M.define (|
          [ "g_local" ],
          M.member_access (|
            M.get_name (| "this" |),
            "g"
          |)
        |) in
      let _ :=
        M.define (|
          [ "h_local" ],
          M.member_access (|
            M.get_name (| "this" |),
            "h"
          |)
        |) in
      let _ :=
        M.define (|
          [ "i_local" ],
          M.member_access (|
            M.get_name (| "this" |),
            "i"
          |)
        |) in
      let _ :=
        M.call (|
          M.get_name (| "assert" |),
          [
            M.bin_op (|
              "&&",
              M.bin_op (|
                "&&",
                M.bin_op (|
                  "&&",
                  M.bin_op (|
                    "&&",
                    M.bin_op (|
                      "&&",
                      M.bin_op (|
                        "&&",
                        M.bin_op (|
                          "&&",
                          M.bin_op (|
                            "&&",
                            M.bin_op (|
                              "&&",
                              M.bin_op (|
                                "&&",
                                M.bin_op (|
                                  "&&",
                                  M.bin_op (|
                                    "&&",
                                    M.bin_op (|
                                      "&&",
                                      M.bin_op (|
                                        "&&",
                                        M.bin_op (|
                                          "&&",
                                          M.bin_op (|
                                            "==",
                                            M.get_name (| "f_local" |),
                                            M.member_access (|
                                              M.get_name (| "this" |),
                                              "f"
                                            |)
                                          |),
                                          M.bin_op (|
                                            "==",
                                            M.get_name (| "g_local" |),
                                            M.member_access (|
                                              M.get_name (| "this" |),
                                              "g"
                                            |)
                                          |)
                                        |),
                                        M.bin_op (|
                                          "==",
                                          M.get_name (| "h_local" |),
                                          M.member_access (|
                                            M.get_name (| "this" |),
                                            "h"
                                          |)
                                        |)
                                      |),
                                      M.bin_op (|
                                        "==",
                                        M.get_name (| "i_local" |),
                                        M.member_access (|
                                          M.get_name (| "this" |),
                                          "i"
                                        |)
                                      |)
                                    |),
                                    M.bin_op (|
                                      "!=",
                                      M.get_name (| "f_local" |),
                                      M.member_access (|
                                        M.get_name (| "this" |),
                                        "g"
                                      |)
                                    |)
                                  |),
                                  M.bin_op (|
                                    "!=",
                                    M.get_name (| "f_local" |),
                                    M.member_access (|
                                      M.get_name (| "this" |),
                                      "h"
                                    |)
                                  |)
                                |),
                                M.bin_op (|
                                  "!=",
                                  M.get_name (| "f_local" |),
                                  M.member_access (|
                                    M.get_name (| "this" |),
                                    "i"
                                  |)
                                |)
                              |),
                              M.bin_op (|
                                "!=",
                                M.get_name (| "g_local" |),
                                M.member_access (|
                                  M.get_name (| "this" |),
                                  "f"
                                |)
                              |)
                            |),
                            M.bin_op (|
                              "!=",
                              M.get_name (| "g_local" |),
                              M.member_access (|
                                M.get_name (| "this" |),
                                "h"
                              |)
                            |)
                          |),
                          M.bin_op (|
                            "!=",
                            M.get_name (| "g_local" |),
                            M.member_access (|
                              M.get_name (| "this" |),
                              "i"
                            |)
                          |)
                        |),
                        M.bin_op (|
                          "!=",
                          M.get_name (| "h_local" |),
                          M.member_access (|
                            M.get_name (| "this" |),
                            "f"
                          |)
                        |)
                      |),
                      M.bin_op (|
                        "!=",
                        M.get_name (| "h_local" |),
                        M.member_access (|
                          M.get_name (| "this" |),
                          "g"
                        |)
                      |)
                    |),
                    M.bin_op (|
                      "!=",
                      M.get_name (| "h_local" |),
                      M.member_access (|
                        M.get_name (| "this" |),
                        "i"
                      |)
                    |)
                  |),
                  M.bin_op (|
                    "!=",
                    M.get_name (| "i_local" |),
                    M.member_access (|
                      M.get_name (| "this" |),
                      "f"
                    |)
                  |)
                |),
                M.bin_op (|
                  "!=",
                  M.get_name (| "i_local" |),
                  M.member_access (|
                    M.get_name (| "this" |),
                    "g"
                  |)
                |)
              |),
              M.bin_op (|
                "!=",
                M.get_name (| "i_local" |),
                M.member_access (|
                  M.get_name (| "this" |),
                  "h"
                |)
              |)
            |)
          ]
        |) in
      let _ :=
        M.call (|
          M.get_name (| "assert" |),
          [
            M.bin_op (|
              "&&",
              M.bin_op (|
                "&&",
                M.bin_op (|
                  "&&",
                  M.bin_op (|
                    "==",
                    M.get_name (| "f_local" |),
                    M.get_name (| "f_local" |)
                  |),
                  M.bin_op (|
                    "!=",
                    M.get_name (| "f_local" |),
                    M.get_name (| "g_local" |)
                  |)
                |),
                M.bin_op (|
                  "!=",
                  M.get_name (| "f_local" |),
                  M.get_name (| "h_local" |)
                |)
              |),
              M.bin_op (|
                "!=",
                M.get_name (| "f_local" |),
                M.get_name (| "i_local" |)
              |)
            |)
          ]
        |) in
      let _ :=
        M.call (|
          M.get_name (| "assert" |),
          [
            M.bin_op (|
              "&&",
              M.bin_op (|
                "&&",
                M.bin_op (|
                  "==",
                  M.get_name (| "g_local" |),
                  M.get_name (| "g_local" |)
                |),
                M.bin_op (|
                  "!=",
                  M.get_name (| "g_local" |),
                  M.get_name (| "h_local" |)
                |)
              |),
              M.bin_op (|
                "!=",
                M.get_name (| "g_local" |),
                M.get_name (| "i_local" |)
              |)
            |)
          ]
        |) in
      let _ :=
        M.call (|
          M.get_name (| "assert" |),
          [
            M.bin_op (|
              "&&",
              M.bin_op (|
                "&&",
                M.bin_op (|
                  "==",
                  M.get_name (| "h_local" |),
                  M.get_name (| "h_local" |)
                |),
                M.bin_op (|
                  "==",
                  M.get_name (| "i_local" |),
                  M.get_name (| "i_local" |)
                |)
              |),
              M.bin_op (|
                "!=",
                M.get_name (| "h_local" |),
                M.get_name (| "i_local" |)
              |)
            |)
          ]
        |) in
      let _ :=
        M.return_ (|
          Value.Bool true
        |) in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
