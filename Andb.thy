theory Andb
  imports Main
begin

section {* Andb *}

fun andb :: "bool \<Rightarrow> bool \<Rightarrow> bool" where
  "andb True c = c"
  | "andb False _ = False"

theorem andb_true_elim2: "\<forall> b c :: bool. (andb b c) = True \<longrightarrow> c = True"
  using andb.elims
  apply(auto)
  done

end