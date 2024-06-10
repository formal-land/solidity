Require Import CoqOfSolidity.CoqOfSolidity.

Module Dict.
  Definition t (A : Set) : Set :=
    list (string * A).

  Fixpoint get {A : Set} (default : A) (dict : t A) (name : string) : A :=
    match dict with
    | [] => default
    | (name', value) :: dict =>
      if String.eqb name name'
      then value
      else get default dict name
    end.

  Fixpoint set {A : Set} (dict : t A) (name : string) (value : A) : t A :=
    match dict with
    | [] => [(name, value)]
    | ((name', _) as entry) :: dict =>
      if String.eqb name name'
      then (name, value) :: dict
      else entry :: set dict name value
    end.
End Dict.

Module Locals.
  Record t : Set := {
    functions : list (string * (list U256.t -> M.t (list U256.t)));
    variables : list (string * U256.t)
  }.

  Definition get_var (locals : t) (name : string) : U256.t :=
    Dict.get 0 locals.(variables) name.

  Fixpoint set_vars (locals : t) (names : list string) (values : list U256.t) : t :=
    match names, values with
    | name :: names, value :: values =>
      set_vars (locals <| variables := Dict.set locals.(variables) name value |>) names values
    | _, _ => locals
    end.

  Definition get_function (locals : t) (name : string) : list U256.t -> M.t (list U256.t) :=
    Dict.get (fun _ => M.Impossible "Function not found") locals.(functions) name.

  Definition declare_function
      (locals : t)
      (name : string)
      (body : list U256.t -> M.t (list U256.t)) :
      t :=
    locals <| functions := Dict.set locals.(functions) name body |>.
End Locals.

Module Run.
  Reserved Notation "{{ locals | e ⇓ output | locals' }}" (at level 70, no associativity).

  Inductive t {A : Set} (locals : Locals.t) (output : A) : M.t A -> Locals.t -> Prop :=
  | Pure : {{ locals | M.Pure output ⇓ output | locals }}
  | GetVar name k locals' :
    {{ locals | k (Locals.get_var locals name) ⇓ output | locals' }} ->
    {{ locals | M.GetVar name k ⇓ output | locals' }}
  | SetVar names values k locals' :
    {{ Locals.set_vars locals names values | k ⇓ output | locals' }} ->
    {{ locals | M.SetVar names values k ⇓ output | locals' }}
  | CallFunction name arguments k results locals_inter locals' :
    let function := Locals.get_function locals name in
    {{ locals | function arguments ⇓ results | locals_inter }} ->
    {{ locals_inter | k results ⇓ output | locals' }} ->
    {{ locals | M.CallFunction name arguments k ⇓ output | locals' }}
  | DeclareFunction name body k locals' :
    {{ Locals.declare_function locals name body | k ⇓ output | locals' }} ->
    {{ locals | M.DeclareFunction name body k ⇓ output | locals' }}

  where "{{ locals | e ⇓ output | locals' }}" :=
    (t locals output e locals').
End Run.
