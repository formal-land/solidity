(* Generated by coq-of-solidity *)
Require CoqOfSolidity.CoqOfSolidity.

(* Contract *)
Module C.
  Definition invoices : Value.t :=
    undefined.

  (* Struct Invoice *)

  Definition nredit (α : list Value.t) : M :=
    match α with
    | [startindex] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition return500InvoicesByDates (α : list Value.t) : M :=
    match α with
    | [begindate, enddate, startindex] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.

  Definition return500PaymentsByDates (α : list Value.t) : M :=
    match α with
    | [begindate, enddate, startindex] =>
      let _ :=
         in
      Value.Tuple []
    | _ => M.impossible "invalid number of parameters"
    end.
End C.
