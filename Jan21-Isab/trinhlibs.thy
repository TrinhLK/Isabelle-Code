theory trinhlibs
  imports Main
begin

(*----supporting functions-------------------------------------------------------*)
fun lookup_1 :: "nat \<Rightarrow> (nat * nat list) list \<Rightarrow> nat list" where
"lookup_1 k [] = []" |
"lookup_1 k (x#xs) = (if fst x = k then (snd x) else lookup_1 k xs)"

fun lookup_2 :: "nat \<Rightarrow> (nat * nat list) list list \<Rightarrow> nat list" where
"lookup_2 k [] = []" |
"lookup_2 k (x#xs) = (lookup_1 k x) @ (lookup_2 k xs)"

fun lookup_3 :: "nat \<Rightarrow> (nat * nat list) list list list \<Rightarrow> nat list" where
"lookup_3 k [] = []" |
"lookup_3 k (x#xs) = (lookup_2 k x) @ (lookup_3 k xs)"

fun mk_pair :: "nat \<Rightarrow> nat list \<Rightarrow> (nat * nat) list" where
"mk_pair k [] = []" |
"mk_pair k (x#xs) = [(k, x)] @ mk_pair k xs"

fun mk_pair_1 :: "(nat * nat list) \<Rightarrow> (nat * nat) list" where
"mk_pair_1 k = mk_pair (fst k) (snd k)"

fun mk_pair_2 :: "(nat * nat list) list \<Rightarrow> (nat * nat) list list" where
"mk_pair_2 [] = []" |
"mk_pair_2 (x#xs) = [mk_pair_1 x] @ mk_pair_2 xs"

fun mk_pair_3 :: "(nat * nat list) list list \<Rightarrow> (nat * nat) list list list" where
"mk_pair_3 [] = []" |
"mk_pair_3 (x#xs) = [product_lists (mk_pair_2 x)] @ mk_pair_3 xs"

fun mk_pair_4 :: "(nat * nat list) list list list \<Rightarrow> (nat * nat) list list list " where
"mk_pair_4 [] = []" |
"mk_pair_4 (x#xs) = mk_pair_3 x @ mk_pair_4 xs"

fun product_betaSet :: "'a list list list \<Rightarrow> 'a list list list" where
"product_betaSet [] = [[]]" |
"product_betaSet (xs # xss) = concat (map (\<lambda>x. map (Cons x) (product_betaSet xss)) xs)"

(*----definitions------------------------------------------------------------------------*)
definition t_SyncInstance_1 :: "(nat * nat list) list list list" where
"t_SyncInstance_1 = [[[(0, [1,2,3]), (1,[4,5])]], [[(3,[6,7])]]]"
definition t_TrigInstance_1 :: "(nat * nat list) list list list" where
"t_TrigInstance_1 = [[[(0, [5, 6]), (1, [7, 8, 9])]], [[(2,[10]), (3, [11,12])]]]"
definition t_betaSet_1 :: "(nat * nat) list list list" where
"t_betaSet_1 = product_betaSet (mk_pair_4 t_TrigInstance_1)"

value "t_betaSet_1"

(*----lemma equiv------------------------------------------------------------------------*)
lemma my_equiv: "((\<forall>i \<in> set t_TrigInstance_1. \<forall>v \<in> set i. \<forall>k \<in> set v. \<exists>h \<in> set (snd k).\<forall>h1 \<in> set (snd k) - {h}. \<not> Q (fst k) h1))
\<Longrightarrow> (\<exists>bet \<in> set t_betaSet_1.\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)"
proof -
  show ?thesis sorry
qed
end