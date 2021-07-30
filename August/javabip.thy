theory javabip
  imports Main "/Volumes/Setup/Isabelle/Isabelle-Code/August/libs_functions"
begin
definition BIP_Connector :: "((string \<times> string) list \<times> (string \<times> string) list list) list" where
"BIP_Connector = List.product (concat (mk_pair_4 test_synchron)) (mk_pair_4 (make_betaSet_3 test_triggers))"

fun mk_Trigger_list :: "(string * string) list list list \<Rightarrow> (string * string) list list list" where
"mk_Trigger_list [] = []" |
"mk_Trigger_list (x#xs) = [(product_lists  x)] @ mk_Trigger_list xs"

value "concat (mk_pair_4 test_synchron)"
value "(mk_pair_4 (make_betaSet_3 test_triggers))"
value "(mk_pair_4 test_synchron)"
value "concat (mk_pair_4 test_synchron)"

value "(mk_pair_4 test_triggers)"
value "(mk_pair_4_no_product test_triggers)"
value "(mk_Trigger_list (mk_pair_4_no_product test_triggers))"
value "(mk_Trigger_list (mk_pair_4_no_product test_synchron))"
value "List.product (mk_Trigger_list (mk_pair_4 test_synchron)) (mk_Trigger_list (mk_pair_4_no_product test_triggers))"

value "mk_pair_4_no_product test_synchron"
value "List.product (mk_Trigger_list (mk_pair_4_no_product test_synchron)) (mk_Trigger_list (mk_pair_4_no_product test_triggers))"
value "List.product ((mk_pair_4_no_product test_synchron)) (mk_Trigger_list (mk_pair_4_no_product test_triggers))"

definition JavaBIP_Connector :: "((string \<times> string) list list \<times> (string \<times> string) list list) list"
  where
"JavaBIP_Connector = List.product (mk_Trigger_list (mk_pair_4_no_product test_synchron)) (mk_Trigger_list (mk_pair_4_no_product test_triggers))"

definition JavaBIP_Connector_1 :: "((string \<times> string) list list \<times> (string \<times> string) list list) list"
  where
"JavaBIP_Connector_1 = List.product ((mk_pair_4_no_product test_synchron)) (mk_Trigger_list (mk_pair_4_no_product test_triggers))"

value "JavaBIP_Connector"
value "\<exists>connector \<in>set JavaBIP_Connector.\<forall>sync\<in>set (fst connector).\<forall>s_elm\<in>set(sync).(P (fst s_elm) (snd s_elm) \<longrightarrow> (\<exists>trig\<in>set(snd connector).\<forall>t_elm\<in>set(trig). Q (fst t_elm) (snd t_elm) \<and> (\<forall>h \<in> set (lookup_3 (fst t_elm) test_triggers) - {snd t_elm}. \<not>Q (fst t_elm) h) 
\<and> (\<forall>s_elm_1\<in>set(sync)-{s_elm}. P (fst s_elm_1) (snd s_elm_1)
    \<and> (\<forall>l \<in> set (lookup_3 (fst s_elm_1) test_synchron) - {snd s_elm_1}. \<not>P (fst s_elm_1) l))
)
)"

value "\<exists>connector \<in>set JavaBIP_Connector.\<forall>sync\<in>set (fst connector).\<exists>s_elm\<in>set(sync).(P (fst s_elm) (snd s_elm) \<longrightarrow> (\<exists>trig\<in>set(snd connector).\<forall>t_elm\<in>set(trig). Q (fst t_elm) (snd t_elm) 
  \<and> (\<forall>h \<in> set (lookup_3 (fst t_elm) test_triggers) - {snd t_elm}. \<not>Q (fst t_elm) h) 
  \<and> (
    (\<forall>s_elm_1\<in>set(sync)-{s_elm}. P (fst s_elm_1) (snd s_elm_1)
    \<and> (\<forall>l \<in> set (lookup_3 (fst s_elm_1) test_synchron) - {snd s_elm_1}. \<not>P (fst s_elm_1) l))
    
    )
)
)"

(*----------*)
value "JavaBIP_Connector_1"

(*REQUIRE*)
value "\<exists>connector\<in>set JavaBIP_Connector_1.\<exists>sync\<in>set (fst connector).\<forall>s_elm\<in>set sync. (
P (fst s_elm) (snd s_elm) \<longrightarrow> 
    ((\<exists>trig\<in>set(snd connector).\<forall>t_elm\<in>set trig. (
      Q (fst t_elm) (snd t_elm) 
      \<and> (\<forall>h \<in> set (lookup_3 (fst t_elm) test_triggers) - {snd t_elm}. \<not>Q (fst t_elm) h)))
      \<and> (\<forall>sync_1\<in>set(fst connector)-{sync}.\<exists>s_elm_1\<in>set(sync_1). P (fst s_elm_1) (snd s_elm_1)
      \<and> (\<forall>l \<in> set (lookup_3 (fst s_elm_1) test_synchron) - {snd s_elm_1}. \<not>P (fst s_elm_1) l))
    )
)"


(*Accepts*)
value "(\<forall>j \<in> set test_synchron. \<forall>u \<in> set j. \<forall>t \<in> set u. \<exists>l \<in> set (snd t).\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1) 
\<and> (\<forall>i \<in> set test_triggers. \<forall>v \<in> set i. \<forall>k \<in> set v. \<exists>h \<in> set (snd k).\<forall>h1 \<in> set (snd k) - {h}. \<not> Q (fst k) h1)"

(*JavaBIP*)
value "(\<exists>connector\<in>set JavaBIP_Connector_1.\<exists>sync\<in>set (fst connector).\<forall>s_elm\<in>set sync. (
P (fst s_elm) (snd s_elm) \<longrightarrow> 
    ((\<exists>trig\<in>set(snd connector).\<forall>t_elm\<in>set trig. (
      Q (fst t_elm) (snd t_elm) 
      \<and> (\<forall>h \<in> set (lookup_3 (fst t_elm) test_triggers) - {snd t_elm}. \<not>Q (fst t_elm) h)))
      \<and> (\<forall>sync_1\<in>set(fst connector)-{sync}.\<exists>s_elm_1\<in>set(sync_1). P (fst s_elm_1) (snd s_elm_1)
      \<and> (\<forall>l \<in> set (lookup_3 (fst s_elm_1) test_synchron) - {snd s_elm_1}. \<not>P (fst s_elm_1) l))
    )
))
\<and> (\<forall>j \<in> set test_synchron. \<forall>u \<in> set j. \<forall>t \<in> set u. \<exists>l \<in> set (snd t).\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1) 
\<and> (\<forall>i \<in> set test_triggers. \<forall>v \<in> set i. \<forall>k \<in> set v. \<exists>h \<in> set (snd k).\<forall>h1 \<in> set (snd k) - {h}. \<not> Q (fst k) h1)"

lemma compare: "((\<exists>connector\<in>set JavaBIP_Connector_1.\<exists>sync\<in>set (fst connector).\<forall>s_elm\<in>set sync. (
P (fst s_elm) (snd s_elm) \<longrightarrow> 
    ((\<exists>trig\<in>set(snd connector).\<forall>t_elm\<in>set trig. (
      Q (fst t_elm) (snd t_elm) 
      \<and> (\<forall>h \<in> set (lookup_3 (fst t_elm) test_triggers) - {snd t_elm}. \<not>Q (fst t_elm) h)))
      \<and> (\<forall>sync_1\<in>set(fst connector)-{sync}.\<exists>s_elm_1\<in>set(sync_1). P (fst s_elm_1) (snd s_elm_1)
      \<and> (\<forall>l \<in> set (lookup_3 (fst s_elm_1) test_synchron) - {snd s_elm_1}. \<not>P (fst s_elm_1) l))
    )
))
\<and> (\<forall>j \<in> set test_synchron. \<forall>u \<in> set j. \<forall>t \<in> set u. \<exists>l \<in> set (snd t).\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1) 
\<and> (\<forall>i \<in> set test_triggers. \<forall>v \<in> set i. \<forall>k \<in> set v. \<exists>h \<in> set (snd k).\<forall>h1 \<in> set (snd k) - {h}. \<not> Q (fst k) h1)) \<Longrightarrow>
(\<exists>connector\<in>set BIP_Connector.\<exists>sync\<in>set (fst connector).(P (fst sync) (snd sync) \<longrightarrow> ((\<exists>trig\<in>set (snd connector).\<forall>elm\<in>set trig. Q (fst elm) (snd elm)) 
  \<and> (\<forall>sync1\<in>set (fst connector) - {sync}. P (fst sync1) (snd sync1))
  \<and> (\<forall>rs \<in> remaining_pairs (all_pairs test_synchron) (fst connector). \<not>P (fst rs) (snd rs))
  \<and> (\<forall>rt \<in> remaining_pairs (all_pairs test_triggers) (concat (snd connector)). \<not>Q (fst rt) (snd rt)))
))"
  sledgehammer
(*----old------*)
(*
value "List.product [[(''3b1'', ''1'')]] [[(''3b2'', ''1''), (''3b2'', ''2'')]]"
fun make_javaBIP :: "'a list \<Rightarrow> 'b list \<Rightarrow> ('a * 'b list) list"
  where
"make_javaBIP [] _ = []" |
"make_javaBIP (x#xs) ys = [(Pair x) ys] @ make_javaBIP xs ys"

value "make_javaBIP (concat (mk_pair_4 test_synchron)) (mk_pair_4 (make_betaSet_3 test_triggers))"

definition JavaBIP_Connector :: "((string \<times> string) list \<times> (string \<times> string) list list list) list" where
"JavaBIP_Connector = make_javaBIP (concat (mk_pair_4 test_synchron)) (mk_pair_4 (make_betaSet_3 test_triggers))"

definition BIP_Connector :: "((string \<times> string) list \<times> (string \<times> string) list list) list" where
"BIP_Connector = List.product (concat (mk_pair_4 test_synchron)) (mk_pair_4 (make_betaSet_3 test_triggers))"

value "(Pair [(''4'', ''1'')]) (mk_pair_4 (make_betaSet_3 test_triggers))"
value "JavaBIP_Connector"

(*require code*)
value "\<forall>connector\<in>set JavaBIP_Connector.\<forall>sync\<in> set (fst connector). (P (fst sync) (snd sync) \<longrightarrow> 
  (\<exists>bet \<in> set (snd connector). 
    (\<exists>bet1\<in> set bet.\<forall>elm \<in> set (bet1).(Q (fst elm) (snd elm) \<and> (\<forall>h \<in> set (lookup_3 (fst elm) test_triggers) - {snd elm}. \<not>Q (fst elm) h))) 
    \<and> (\<forall>sync1\<in> set (fst connector) - {sync}. P (fst sync1) (snd sync1) \<and> (\<forall>l \<in> set (lookup_3 (fst sync1) test_synchron)-{snd sync1}.\<not>P (fst sync1) l))
  )
)"

(*accept code*)
value "(\<forall>j \<in> set test_synchron. \<forall>u \<in> set j. \<forall>t \<in> set u. \<exists>l \<in> set (snd t).\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1) 
\<and> (\<forall>i \<in> set test_triggers. \<forall>v \<in> set i. \<forall>k \<in> set v. \<exists>h \<in> set (snd k).\<forall>h1 \<in> set (snd k) - {h}. \<not> Q (fst k) h1)"

(*JavaBIP code*)
value "((\<forall>connector\<in>set JavaBIP_Connector.\<forall>sync\<in> set (fst connector). (P (fst sync) (snd sync) \<longrightarrow> 
  (\<exists>bet \<in> set (snd connector). 
    (\<exists>bet1\<in> set bet.\<forall>elm \<in> set (bet1).(Q (fst elm) (snd elm) \<and> (\<forall>h \<in> set (lookup_3 (fst elm) test_triggers) - {snd elm}. \<not>Q (fst elm) h))) 
    \<and> (\<forall>sync1\<in> set (fst connector) - {sync}. P (fst sync1) (snd sync1) \<and> (\<forall>l \<in> set (lookup_3 (fst sync1) test_synchron)-{snd sync1}.\<not>P (fst sync1) l))
  )
))
\<and> (\<forall>j \<in> set test_synchron. \<forall>u \<in> set j. \<forall>t \<in> set u. \<exists>l \<in> set (snd t).\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1) 
\<and> (\<forall>i \<in> set test_triggers. \<forall>v \<in> set i. \<forall>k \<in> set v. \<exists>h \<in> set (snd k).\<forall>h1 \<in> set (snd k) - {h}. \<not> Q (fst k) h1))
"

lemma compare: "((\<forall>connector\<in>set JavaBIP_Connector.\<forall>sync\<in> set (fst connector). (P (fst sync) (snd sync) \<longrightarrow> 
  (\<exists>bet \<in> set (snd connector). 
    (\<exists>bet1\<in> set bet.\<forall>elm \<in> set (bet1).(Q (fst elm) (snd elm) \<and> (\<forall>h \<in> set (lookup_3 (fst elm) test_triggers) - {snd elm}. \<not>Q (fst elm) h))) 
    \<and> (\<forall>sync1\<in> set (fst connector) - {sync}. P (fst sync1) (snd sync1) \<and> (\<forall>l \<in> set (lookup_3 (fst sync1) test_synchron)-{snd sync1}.\<not>P (fst sync1) l))
  )
))
\<and> (\<forall>j \<in> set test_synchron. \<forall>u \<in> set j. \<forall>t \<in> set u. \<exists>l \<in> set (snd t).\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1) 
\<and> (\<forall>i \<in> set test_triggers. \<forall>v \<in> set i. \<forall>k \<in> set v. \<exists>h \<in> set (snd k).\<forall>h1 \<in> set (snd k) - {h}. \<not> Q (fst k) h1)) \<Longrightarrow>
(\<exists>connector\<in>set BIP_Connector.\<exists>sync\<in>set (fst connector).(P (fst sync) (snd sync) \<longrightarrow> (\<exists>trig\<in>set (snd connector).\<forall>elm\<in>set trig. Q (fst elm) (snd elm)) 
  \<and> (\<forall>sync1\<in>set (fst connector) - {sync}. P (fst sync1) (snd sync1))
  \<and> (\<forall>rs \<in> remaining_pairs (all_pairs test_synchron) (fst connector). \<not>P (fst rs) (snd rs))
  \<and> (\<forall>rt \<in> remaining_pairs (all_pairs test_triggers) (concat (snd connector)). \<not>Q (fst rt) (snd rt))
))
"
  sledgehammer
*)
end