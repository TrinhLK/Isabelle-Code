theory prog_01
  imports Main
begin

value "1 + 2::nat"
fun add :: "nat \<Rightarrow> nat \<Rightarrow> nat" where
"add 0 m = m" | 
"add (Suc m) n = Suc (add m n)"

fun fib :: "nat \<Rightarrow> nat" where
"fib 0 = 0" |
"fib (Suc 0) = 1" |
"fib (Suc(Suc x)) = fib x + fib (Suc x)"

value "fib(8)"
fun gcd :: "nat \<Rightarrow> nat \<Rightarrow> nat" where
"gcd m n = (if n=0 then m then gcd n (m mod n))"


(*associative*)
theorem add_assoc: "add x (add y z) = add (add x y) z"
  apply (induction x)
  apply (auto)
  done

lemma Lemma0[simp]: "add m 0 = m"
  by (induct m) simp_all
lemma Lemma2 [simp]: "add m (Suc n) = Suc (add m n)"
  by (induct m) simp_all

theorem Commu: "add m k = add k m"
  apply (induction k)
  apply (auto)
  done

theorem add_community: "add k m = add m k"  
  apply(induction k)
   apply(subst Lemma0)
   apply (subst add.simps(1))
   apply(rule refl)
  apply (subst add.simps(2))
  apply(erule ssubst)
apply (subst Lemma2)
apply (rule refl)
  done
end