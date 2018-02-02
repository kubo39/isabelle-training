theory Sum
  imports Main
begin

section {* Sum *}

fun sum :: "nat \<Rightarrow> nat" where
  "sum 0 = 0"
  | "sum (Suc n') = (Suc n') + sum n'"

value "sum 0"
value "sum 1"
value "sum 2"
value "sum 3"

lemma test_sum: "sum 1 = 1" by simp
lemma test_sum2: "sum (Suc 1) = 3" by simp
lemma test_sum3: "sum (Suc (Suc 1)) = 6" by simp

end