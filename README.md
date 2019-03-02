# Isabelle/HOL Training

## Trace

`apply(simp)` がなにしてるのかとかみたかったら `using[[simp_trace]]` が使える。

```isabelle
theory SimpTrace
  imports Main
begin

lemma test_simp_trace: "0 = 0"
  using [[simp_trace]]
  apply (simp)
  done

end
```

手元の環境だと `HOL.simp_thms_6` というrewrite ruleで勝手に書き換えられる。
書き換えられた後の形は

- `?x = ?x = True` (2つ目の=は合同だけどemacsのバッファが破壊されるので代用)
- `0 = 0 = True` (上に同じ)

のようになる。ここのTrueは `HOL.True` だと思われる。
