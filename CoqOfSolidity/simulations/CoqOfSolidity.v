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

Import Run.

(** A function to evaluate an expression given enought [fuel]. *)
Fixpoint eval {A : Set} (fuel : nat) (locals : Locals.t) (e : M.t A) : (A + string) * Locals.t :=
  match fuel with
  | O => (inr "out of fuel", locals)
  | S fuel =>
    match e with
    | M.Pure output => (inl output, locals)
    | M.GetVar name k =>
      let value := Locals.get_var locals name in
      eval fuel locals (k value)
    | M.SetVar names values k =>
      eval fuel (Locals.set_vars locals names values) k
    | M.CallFunction name arguments k =>
      let function := Locals.get_function locals name in
      let (results, locals_inter) := eval fuel locals (function arguments) in
      match results with
      | inl results => eval fuel locals_inter (k results)
      | inr message => (inr message, locals)
      end
    | M.DeclareFunction name body k =>
      eval fuel (Locals.declare_function locals name body) k
    | M.Impossible message => (inr ("impossible " ++ message)%string, locals)
    end
  end.

(** The [eval] function follows the semantics given by [Run.t]. *)
Fixpoint eval_is_run {A : Set}
    (fuel : nat) (locals : Locals.t) (e : M.t A) (output : A) (locals' : Locals.t) :
  eval fuel locals e = (inl output, locals') ->
  {{ locals | e ⇓ output | locals' }}.
Proof.
  destruct fuel as [|fuel]; [discriminate|].
  destruct e; cbn; intros H_eval.
  { inversion H_eval; constructor. }
  { constructor.
    eapply eval_is_run.
    eassumption.
  }
  { constructor.
    eapply eval_is_run.
    eassumption.
  }
  { destruct eval as [[results | message] locals_inter] eqn:H_eval_inter in H_eval.
    { econstructor;
        apply eval_is_run with (fuel := fuel);
        eassumption.
    }
    { discriminate. }
  }
  { constructor.
    eapply eval_is_run.
    eassumption.
  }
  { discriminate. }
Qed.
