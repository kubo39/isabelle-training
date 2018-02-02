theory Pow
  imports Main
begin

section {* Pow *}

fun pow :: "nat \<Rightarrow> nat \<Rightarrow> nat" where
  " pow _ 0 = 1"
  | "pow a (Suc n') = a * pow a n'"

value "pow 0 0"

lemma test_pow: "pow x 0 = 1" by auto 

end