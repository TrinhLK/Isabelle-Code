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
"mk_pair_4 (x#xs) = (product_lists (mk_pair_3 x)) @ mk_pair_4 xs"

fun product_betaSet :: "'a list list list \<Rightarrow> 'a list list list" where
"product_betaSet [] = [[]]" |
"product_betaSet (xs # xss) = concat (map (\<lambda>x. map (Cons x) (product_betaSet xss)) xs)"

(*----definitions------------------------------------------------------------------------*)
definition t_SyncInstance_1 :: "(nat * nat list) list list list" where
"t_SyncInstance_1 = [[[(0, [1,2,3]), (1,[4,5])], [(4,[8,9])]], [[(3,[6,7])]]]"
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

(*----test------------------------------------------------------------------------*)
definition t_SyncInstance_2 :: "(nat * nat list) list list list" where
"t_SyncInstance_2 = [ [[(1, [11,12])], [(2,[21,22])]], [[(3,[31,32])]], [[(4,[41,42])], [(5,[51]),(6,[61,62])]] ]"
value "t_SyncInstance_2"
value "mk_pair_4 t_SyncInstance_2"
value "product_betaSet (mk_pair_4 t_SyncInstance_2)"

definition t_Type_Ins :: "nat * nat list" where
"t_Type_Ins = (0, [1,2,3])"
value "mk_pair_1 t_Type_Ins" (*list of pair (type, ins_i):[(type, ins_1), (type, ins_2), ...]*)

definition t_Type_Ins_list :: "(nat * nat list) list" where
"t_Type_Ins_list = [(0, [1,2,3]), (1, [4,5])]"
value "mk_pair_2 t_Type_Ins_list"
value "product_lists (mk_pair_2 t_Type_Ins_list)"
(*if synchroned: product of instances between types: [(t1,i1),(t2,i1),..,(tn,in)] ... [] *)

definition t_Type_Ins_list_list :: "('a * 'a list) list list" where
"t_Type_Ins_list_list = [[(11::nat, [1::nat,2,3])], [(12, [4,5])], [(2,[6,7])]]"
definition t_Type_Ins_list_list_1 :: "(nat * nat list) list list" where
"t_Type_Ins_list_list_1 = [[(31,[1,2])], [(321,[1,2]),(322,[1,2])]]"

fun reduce_dimension :: "('a * 'b) list list \<Rightarrow> ('a * 'b) list" where
"reduce_dimension [] = []" |
"reduce_dimension (x#xs) = x @ reduce_dimension xs"

(*Giam chieu 3 \<rightarrow> 2 de gop beta set*)
fun reduce_dimension_1 :: "(nat * nat) list list list \<Rightarrow> (nat * nat) list list" where
"reduce_dimension_1 [] = []" |
"reduce_dimension_1 (x#xs) = x @ reduce_dimension_1 xs"

value "reduce_dimension [[(11,[1,2])], [(12, [4,5])], [(2,[6,7])]]"

value "List.product [a,b,c] [d,e]"
value "mk_pair_3 t_Type_Ins_list_list"
value "product_lists (mk_pair_3 t_Type_Ins_list_list)"
value "mk_pair_3 t_Type_Ins_list_list_1"
value "product_lists (mk_pair_3 t_Type_Ins_list_list_1)"
value "reduce_dimension (product_lists (mk_pair_3 t_Type_Ins_list_list))"
value "List.product (reduce_dimension_1 (product_lists (mk_pair_3 t_Type_Ins_list_list))) (reduce_dimension_1 (product_lists (mk_pair_3 t_Type_Ins_list_list_1)))"

definition test_Type_Ins_list_list_1 :: "(nat * nat list) list list" where
"test_Type_Ins_list_list_1 = [[(11,[1])], [(12,[1,2])]]"
definition test_Type_Ins_list_list_2 :: "(nat * nat list) list list" where
"test_Type_Ins_list_list_2 = [[(2,[1])]]"
definition test_Type_Ins_list_list_3 :: "(nat * nat list) list list" where
"test_Type_Ins_list_list_3 = [[(31,[1])], [(32,[1]),(33,[1,2])]]"


value "mk_pair_3 test_Type_Ins_list_list_1"
value "product_lists (mk_pair_3 test_Type_Ins_list_list_1)"
value "mk_pair_3 test_Type_Ins_list_list_2"
value "product_lists (mk_pair_3 test_Type_Ins_list_list_2)"
value "mk_pair_3 test_Type_Ins_list_list_3"
value "product_lists (mk_pair_3 test_Type_Ins_list_list_3)"

value "List.product (mk_pair_3 test_Type_Ins_list_list_1) (mk_pair_3 test_Type_Ins_list_list_3)"
value "List.product (product_lists (mk_pair_3 test_Type_Ins_list_list_1)) (product_lists (mk_pair_3 test_Type_Ins_list_list_3))"


fun merge_1 :: "('a list \<times> 'a list) \<Rightarrow> 'a list" where 
"merge_1 x = (fst x) @ (snd x)"

fun merge_2 :: "('a list \<times> 'a list) list \<Rightarrow> 'a list" where 
"merge_2 [] = []" |
"merge_2 (x#xs) = merge_1 x @ (merge_2 xs)"

value "[[1::nat]] @ [[2::nat]]"
value "merge_1 ([a,b], [c,d])"
value "merge_2 [([a],[b]), ([c],[d])]"

fun merge_list :: "('a list \<times> 'a list) list \<Rightarrow> 'a list list" where 
"merge_list []= []" |
"merge_list (x#xs) = [(fst x)@(snd x)] @ (merge_list xs)"

fun merge_list_1 :: "(nat list \<times> nat list) list \<Rightarrow> nat list list" where 
"merge_list_1 []= []" |
"merge_list_1 (x#xs) = [(fst x)@(snd x)] @ (merge_list_1 xs)"

value "merge_list (List.product (product_lists (mk_pair_3 t_Type_Ins_list_list)) (product_lists (mk_pair_3 t_Type_Ins_list_list_1)))"

value "merge_list (List.product (product_lists (mk_pair_3 test_Type_Ins_list_list_1)) (product_lists (mk_pair_3 test_Type_Ins_list_list_3)))"

value "merge_list_1 (reduce_dimension_1 (product_lists (mk_pair_3 t_Type_Ins_list_list))) (reduce_dimension_1 (product_lists (mk_pair_3 t_Type_Ins_list_list_1)))"

definition mk_pair_3_result :: "((nat * nat) list list) * ((nat * nat) list list) list" where
"mk_pair_3_result = List.product (product_lists (mk_pair_3 t_Type_Ins_list_list)) (product_lists (mk_pair_3 t_Type_Ins_list_list_1))"

value "List.product [a,b] [c,d]"
value "List.product [a,b] []"
definition t_Type_Ins_list_list_list :: "(nat * nat list) list list list" where
"t_Type_Ins_list_list_list = [ [[(11, [1,2])], [(12,[1,2])]], [[(2,[1,2])]], [[(31,[1,2])], [(321,[1]),(322,[1,2])]] ]"

definition temp_betaSet :: "(nat * nat) list list list" where
"temp_betaSet = product_lists (mk_pair_4 t_Type_Ins_list_list_list)"

definition temp_betaSet_1 :: "(nat * nat) list list list" where
"temp_betaSet_1 = product_betaSet (mk_pair_4 t_Type_Ins_list_list_list)"

value "mk_pair_4 t_Type_Ins_list_list_list"
value "product_lists (mk_pair_4 t_Type_Ins_list_list_list)"
value "temp_betaSet"
value "temp_betaSet_1"
value "(\<exists>bet \<in> set temp_betaSet.\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm. Q (fst el1) (snd el1))"

end