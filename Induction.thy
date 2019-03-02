theory Induction
  imports Main
begin

section {* induction *}

lemma induction: "\<forall> n::nat. n + 0 = n"
  using [[simp_trace=true]]
  apply (simp)
  done

end
