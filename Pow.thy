theory Pow
  imports Main
begin

section {* Pow *}

fun pow :: "nat \<Rightarrow> nat \<Rightarrow> nat" where
  "pow _ 0 = 1"
  | "pow a (Suc n') = a * pow a n'"

lemma test_pow: "pow x 0 = 1" by auto

theorem pow_0: "\<forall>x :: nat. pow x 0 = 1" by simp

end