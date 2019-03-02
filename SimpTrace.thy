theory SimpTrace
  imports Main
begin

lemma test_simp_trace: "0 = 0"
  using [[simp_trace]]
  apply (simp)
  done

end