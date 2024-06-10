Require Import CoqOfSolidity.CoqOfSolidity.

Module Locals.
  Record t : Set := {
    functions : {M : Set @ list U256.t -> M};
    variables : list (string * U256.t)
  }.
End Locals.
