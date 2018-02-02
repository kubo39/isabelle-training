theory Fib
  imports Main
begin

section {* Fibonacci *}

fun fib :: "nat \<Rightarrow> nat" where
  "fib 0 = 1"
  | "fib (Suc 0) = 1"
  | "fib (Suc (Suc n')) = fib (Suc n') + fib n'"

value "fib 0"
value "fib 1"
value "fib (Suc (Suc 0))"

lemma fib_test1: "fib 1 = 1" by simp
lemma fib_test2: "fib (Suc 1) = 2" by simp
lemma fib_test3: "fib (Suc (Suc 1)) = 3" by simp

theorem fib_thy: "fib n \<ge> 1"
  apply(induction n rule:fib.induct)
  apply(auto)
  done

end