theory libs_nat_functions
  imports Main
begin

(*----looking up functions-------------------------------------------------------*)
fun lookup_1 :: "nat \<Rightarrow> (nat * nat list) list \<Rightarrow> nat list" where
"lookup_1 k [] = []" |
"lookup_1 k (x#xs) = (if fst x = k then (snd x) else lookup_1 k xs)"

fun lookup_2 :: "nat \<Rightarrow> (nat * nat list) list list \<Rightarrow> nat list" where
"lookup_2 k [] = []" |
"lookup_2 k (x#xs) = (lookup_1 k x) @ (lookup_2 k xs)"

fun lookup_3 :: "nat \<Rightarrow> (nat * nat list) list list list \<Rightarrow> nat list" where
"lookup_3 k [] = []" |
"lookup_3 k (x#xs) = (lookup_2 k x) @ (lookup_3 k xs)"

(*----making betaSet functions-------------------------------------------------------*)
(*----make pair: (Type, Instance)------------------------*)
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

fun mk_pair_4 :: "(nat * nat list) list list list \<Rightarrow> (nat * nat) list list list" where
"mk_pair_4 [] = []" |
"mk_pair_4 (x#xs) = product_lists (mk_pair_3 x) @ mk_pair_4 xs"

fun mk_pair_3_no_product :: "(nat * nat list) list list \<Rightarrow> (nat * nat) list list list" where
"mk_pair_3_no_product [] = []" |
"mk_pair_3_no_product (x#xs) = [(mk_pair_2 x)] @ mk_pair_3_no_product xs"

fun mk_pair_4_no_product :: "(nat * nat list) list list list \<Rightarrow> (nat * nat) list list list" where
"mk_pair_4_no_product [] = []" |
"mk_pair_4_no_product (x#xs) = (mk_pair_3_no_product x) @ mk_pair_4_no_product xs"

fun mk_Trigger_list :: "(nat * nat) list list list \<Rightarrow> (nat * nat) list list list" where
"mk_Trigger_list [] = []" |
"mk_Trigger_list (x#xs) = [(product_lists  x)] @ mk_Trigger_list xs"
(*----
get all pairs (Type, Instance) of a  trigger list or a synchron list
----*)
fun all_pairs :: "(nat * nat list) list list list \<Rightarrow> (nat * nat) list" where
"all_pairs x = concat (concat (mk_pair_4_no_product x))"

(*----
the remaining pair (Type, Instance) of a  trigger list or a synchron list from the current connector
----*)
fun remaining_pairs :: "(nat \<times> nat) list \<Rightarrow> (nat \<times> nat) list \<Rightarrow> (nat \<times> nat) set" where
"remaining_pairs x y = set (x) - set (y)"

(*----------------------------
merge_list: After producting 2 lists, we need to convert list of pairs to list of lists -----------------------------*)
fun merge_list :: "('a list \<times> 'a list) list \<Rightarrow> 'a list list list" where 
"merge_list []= []" |
"merge_list (x#xs) = [[(fst x)]@[(snd x)]] @ (merge_list xs)"

fun merge_list_1 :: "('a list list \<times> 'a list) list \<Rightarrow> 'a list list list" where 
"merge_list_1 []= []" |
"merge_list_1 (x#xs) = [(fst x)@[(snd x)]] @ (merge_list_1 xs)"

(*----------------------------
make_betaSet_3: make all the combination between elements in the exported_list of all the trigger ()
-----------------------------*)
fun make_betaSet_3 :: "(nat * nat list) list list list \<Rightarrow> (nat * nat list) list list list" where
"make_betaSet_3 [] = []" |
"make_betaSet_3 (x#[]) =  [x]" |
"make_betaSet_3 (x#y#[]) = merge_list (List.product y x)" |
"make_betaSet_3 (x#y#xs#[]) = merge_list_1 (List.product (merge_list (List.product xs y)) (x))"|
"make_betaSet_3 (x#y#xs#ys) = merge_list_1 (List.product (make_betaSet_3 (y#xs#ys)) (x))"

fun mk_jvb :: "'a list \<Rightarrow> 'b \<Rightarrow> ('a \<times> 'b) list" where
"mk_jvb [] y = []"|
"mk_jvb (x#xs) y = [(Pair x) y] @ mk_jvb xs y"

(*------------------------------------------------------------------------------------------*)
(*test List of all the trigger C = {C_1, C_2, ..., C_n}*)
definition test_triggers_1 :: "(nat * nat list) list list list" where
"test_triggers_1 = [[[(11,[1,2])], [(12,[1,2])]],
[[(2,[1])]],
[[(31,[1])], [(321,[1]),(322,[1,2])]],
[[(4,[1])]]
]"
definition test_triggers :: "(nat * nat list) list list list" where
"test_triggers = [
[[(11,[1, 2]), (12,[1]), (13,[1])]], [[(21,[1])]]
]"

definition test_triggers_null :: "(nat * nat list) list list list" where
"test_triggers_null = [[[]]]"

definition test_synchron_1 :: "(nat * nat list) list list list" where
"test_synchron_1 = [ [[(4, [1,2])]],
[[(51,[1]),(52,[1,2])]]
]"

definition test_synchron :: "(nat * nat list) list list list" where
"test_synchron = [
[[(41,[1,2])]], [[(51,[1])]]
]"

definition Connector :: "((nat \<times> nat) list list \<times> (nat \<times> nat) list list list) list" where
"Connector = mk_jvb (mk_pair_4_no_product test_synchron) (mk_pair_4 (make_betaSet_3 test_triggers))"


(*------------------------------- test -------------------------------*)

(*test List of all the trigger C = {C_1, C_2, ..., C_n}*)
definition test_triggers_11 :: "(nat * nat list) list list list" where
"test_triggers_11 = [[[(11,[1,2])], [(12,[1,2])]],
[[(2,[1])]],
[[(31,[1])], [(321,[1]),(322,[1,2])]],
[[(4,[1])]]
]"

definition test_triggers_2 :: "(nat * nat list) list list list" where
"test_triggers_2 = [[[(11,[1,2])], [(12,[1,2])]],
[[(2,[1])]],
[[(31,[1])], [(321,[1]),(322,[1,2])]],
[[(4,[1])]],
[[(51,[1])], [(52,[6])]]
]"

value "Connector" 

lemma for_synchron: "(\<forall>j \<in> set test_synchron. \<forall>u \<in> set j. \<forall>t \<in> set u. \<forall>l \<in> set (snd t).(P ((fst t), l) \<longrightarrow> (\<forall>l1 \<in> set (snd t) - {l}. \<not>P ((fst t), l1))))
\<Longrightarrow>
(\<forall>j \<in> set test_synchron. \<forall>u \<in> set j. \<forall>t \<in> set u. \<forall>l \<in> set (snd t). (P ((fst t), l) \<longleftrightarrow> (P ((fst t), l) \<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not>P ((fst t), l1)))))"
  by blast


lemma for_trigger: "(\<forall>i \<in> set test_triggers. \<forall>v \<in> set i. \<forall>k \<in> set v. \<forall>h \<in> set (snd k).(Q ((fst k), h) \<longrightarrow> (\<forall>h1 \<in> set (snd k) - {h}. \<not>Q ((fst k), h1))))
\<Longrightarrow>
(\<forall>i \<in> set test_triggers. \<forall>v \<in> set i. \<forall>k \<in> set v. \<forall>h \<in> set (snd k). (Q ((fst k), h) \<longleftrightarrow> (Q ((fst k), h) \<and> (\<forall>h1 \<in> set (snd k) - {h}. \<not>Q ((fst k), h1)))))"
  by blast

value "(\<forall>connector\<in>set Connector.\<forall>trig_list\<in>set(snd connector).\<forall>trig\<in>set trig_list. \<forall>t_elm\<in>set trig. (Q ((fst t_elm), (snd t_elm)) \<and> (\<forall>h \<in> set (lookup_3 (fst t_elm) test_triggers) - {snd t_elm}. \<not>Q ((fst t_elm), h)) ))"

value "(\<forall>i \<in> set test_triggers. \<forall>v \<in> set i. \<forall>k \<in> set v. \<forall>h \<in> set (snd k).(Q ((fst k), h)) \<longrightarrow> (\<forall>h \<in> set (lookup_3 (fst k) test_triggers) - {h}. \<not>Q ((fst k), h)))"

(*----quick check-------------------------------------------------------*)
definition s_list :: "nat list" where
"s_list = [1::nat,2,3,4,5,6,7,8,9]"

definition t_list :: "nat list" where
"t_list = [1::nat,2,3,4,5,6,7,8,9,10]"

value "\<exists>x \<in> set s_list. ((P x \<longrightarrow> (\<exists>y \<in> set t_list. Q y \<and> (\<forall>x1 \<in> set s_list - {x}. \<not>P x1) \<and> (\<forall>y1 \<in> set t_list - {y}. \<not>Q y1))))"

value "(\<forall>x \<in> set s_list. (P x \<longrightarrow> (\<exists>y \<in> set t_list. Q y))) 
\<and> (\<forall>x \<in> set s_list. (P x \<longrightarrow> (\<forall>x1 \<in> set s_list - {x}. \<not>P x1))) 
\<and> (\<forall>y \<in> set t_list. (Q y \<longrightarrow> (\<forall>y1 \<in> set t_list - {y}. \<not>Q y1)))"

value "(\<forall>x \<in> set s_list. (P x \<longrightarrow> (\<forall>x1 \<in> set s_list - {x}. \<not>P x1)))"
value "(\<exists>x \<in> set s_list. (\<forall>x1 \<in> set s_list - {x}. \<not>P x1))"

(*
lemma ins: "
(\<exists>x \<in> set s_list. ((P x \<longrightarrow> (\<exists>y \<in> set t_list. Q y \<and> (\<forall>x1 \<in> set s_list - {x}. \<not>P x1) \<and> (\<forall>y1 \<in> set t_list - {y}. \<not>Q y1))))) \<Longrightarrow> (
(\<forall>x \<in> set s_list. (P x \<longrightarrow> (\<exists>y \<in> set t_list. Q y))) 
\<and> (\<forall>x \<in> set s_list. (P x \<longrightarrow> (\<forall>x1 \<in> set s_list - {x}. \<not>P x1))) 
\<and> (\<forall>y \<in> set t_list. (Q y \<longrightarrow> (\<forall>y1 \<in> set t_list - {y}. \<not>Q y1)))
)
"
  nitpick [card = 3]
  done*)
lemma test_0: "((\<forall>x \<in> set s_list. (P x \<longrightarrow> (\<forall>x1 \<in> set s_list - {x}. \<not>P x1)))) \<Longrightarrow> (
(\<exists>x \<in> set s_list. (\<forall>x1 \<in> set s_list - {x}. \<not>P x1))
)"
  by (metis DiffE list.set_sel(1) neq_Nil_conv s_list_def)

(*
lemma test_11:
  fixes s_list::"nat list"
  assumes "card (set s_list) > 1"
  shows "((\<forall>x \<in> set s_list. (P x \<longrightarrow> (\<forall>x1 \<in> set s_list - {x}. \<not>P x1)))) \<Longrightarrow> (
  (\<exists>x \<in> set s_list. (\<forall>x1 \<in> set s_list - {x}. \<not>P x1))
  )"
  (*sledgehammer*)
  nitpick [card=10]*)
 

lemma test_1:
  fixes test_synchron::"(nat * nat list) list list list"
  fixes test_triggers::"(nat * nat list) list list list"
  fixes Connector::"((nat \<times> nat) list list \<times> (nat \<times> nat) list list list) list"
  assumes "Connector = mk_jvb (mk_pair_4_no_product test_synchron) (mk_pair_4 (make_betaSet_3 test_triggers))"
  shows "((\<forall>connector\<in>set Connector.\<forall>sync_list\<in>set (fst connector).\<forall>sync\<in>set sync_list. \<exists>trig_list\<in>set(snd connector).(P ((fst sync),(snd sync)) \<longrightarrow> 
      (( \<exists>trig\<in>set trig_list.\<forall>t_elm\<in>set trig. (Q ((fst t_elm), (snd t_elm))
       ))                          
      \<and> (\<forall>sync_1\<in>set(fst connector)-{sync_list}.\<exists>s_elm_1\<in>set(sync_1). P ((fst s_elm_1),(snd s_elm_1))
      )
    )
))\<and> (\<forall>j \<in> set test_synchron. \<forall>u \<in> set j. \<forall>t \<in> set u. \<forall>l \<in> set (snd t).(P ((fst t), l) \<longrightarrow> (\<forall>l1 \<in> set (snd t) - {l}. \<not>P ((fst t), l1))))
\<and> (\<forall>i \<in> set test_triggers. \<forall>v \<in> set i. \<forall>k \<in> set v. \<forall>h \<in> set (snd k).(Q ((fst k), h) \<longrightarrow> (\<forall>h1 \<in> set (snd k) - {h}. \<not>Q ((fst k), h1)))))
\<Longrightarrow> (
(\<forall>connector\<in>set Connector.\<forall>sync_list\<in>set (fst connector).\<forall>sync\<in>set sync_list. (P ((fst sync), (snd sync)) \<longrightarrow> 
      ((\<exists>trig_list\<in>set(snd connector).\<exists>trig\<in>set trig_list. \<forall>t_elm\<in>set trig. (Q ((fst t_elm), (snd t_elm))
      \<and> (\<forall>h \<in> set (lookup_3 (fst t_elm) test_triggers) - {snd t_elm}. \<not>Q ((fst t_elm), h)) ))
      \<and> (\<forall>sync_1\<in>set(fst connector)-{sync_list}.\<exists>s_elm_1\<in>set(sync_1). P ((fst s_elm_1), (snd s_elm_1))
      \<and> (\<forall>l \<in> set (lookup_3 (fst s_elm_1) test_synchron) - {snd s_elm_1}. \<not>P ((fst s_elm_1), l)))
    )
))\<and> (\<forall>j \<in> set test_synchron. \<forall>u \<in> set j. \<forall>t \<in> set u. \<forall>l \<in> set (snd t).(P ((fst t), l) \<longrightarrow> (\<forall>l1 \<in> set (snd t) - {l}. \<not>P ((fst t), l1))))
\<and> (\<forall>i \<in> set test_triggers. \<forall>v \<in> set i. \<forall>k \<in> set v. \<forall>h \<in> set (snd k).(Q ((fst k), h) \<longrightarrow> (\<forall>h1 \<in> set (snd k) - {h}. \<not>Q ((fst k), h1))))
)"
  nitpick [timeout = 120, card = 3]
  
end
