theory javabip
  imports Main "/Volumes/Setup/Isabelle/Isabelle-Code/September/libs_functions"
begin

value "(
(\<forall>connector\<in>set Connector.\<forall>sync_list\<in>set (fst connector).\<forall>sync\<in>set sync_list. (P ((fst sync), (snd sync)) \<longrightarrow> 
      ((\<exists>trig_list\<in>set(snd connector).\<exists>trig\<in>set trig_list. \<forall>t_elm\<in>set trig. (Q ((fst t_elm), (snd t_elm))
      \<and> (\<forall>h \<in> set (lookup_3 (fst t_elm) test_triggers) - {snd t_elm}. \<not>Q ((fst t_elm), h)) ))
      \<and> (\<forall>sync_1\<in>set(fst connector)-{sync_list}.\<exists>s_elm_1\<in>set(sync_1). P ((fst s_elm_1), (snd s_elm_1))
      \<and> (\<forall>l \<in> set (lookup_3 (fst s_elm_1) test_synchron) - {snd s_elm_1}. \<not>P ((fst s_elm_1), l)))
    )
))\<and> (\<forall>j \<in> set test_synchron. \<forall>u \<in> set j. \<forall>t \<in> set u. \<forall>l \<in> set (snd t).(P ((fst t), l) \<longrightarrow> (\<forall>l1 \<in> set (snd t) - {l}. \<not>P ((fst t), l1))))
\<and> (\<forall>i \<in> set test_triggers. \<forall>v \<in> set i. \<forall>k \<in> set v. \<forall>h \<in> set (snd k).(Q ((fst k), h) \<longrightarrow> (\<forall>h1 \<in> set (snd k) - {h}. \<not>Q ((fst k), h1))))
)"

(*
(*--------------------------------*)
(*JavaBIP connector 2*)
value "mk_jvb (mk_pair_4_no_product test_synchron) (mk_Trigger_list (mk_pair_4_no_product test_triggers))"

definition JavaBIP_Connector_2 :: "((string \<times> string) list list \<times> (string \<times> string) list list list) list"
  where
"JavaBIP_Connector_2 = mk_jvb (mk_pair_4_no_product test_synchron) (mk_Trigger_list (mk_pair_4_no_product test_triggers))"

value "JavaBIP_Connector_2"

value "mk_Trigger_list (mk_pair_4_no_product test_triggers)"

value "product_lists (mk_Trigger_list (mk_pair_4_no_product test_triggers))"

(*----- JavaBIP_Connector_2 -----*)
value "JavaBIP_Connector_2"
value "(\<forall>connector\<in>set JavaBIP_Connector_2.\<exists>trig_list\<in>set(snd connector).\<exists>trig\<in>set trig_list. \<forall>t_elm\<in>set trig. (Q (fst t_elm) (snd t_elm)
\<and> (\<forall>h \<in> set (lookup_3 (fst t_elm) test_triggers) - {snd t_elm}. \<not>Q (fst t_elm) h)))"

(*JavaBIP*)
value "((\<forall>connector\<in>set JavaBIP_Connector_2.\<forall>sync_list\<in>set (fst connector).\<forall>sync\<in>set sync_list. (P (fst sync) (snd sync) \<longrightarrow> 
      ((\<exists>trig_list\<in>set(snd connector).\<exists>trig\<in>set trig_list. \<forall>t_elm\<in>set trig. (Q (fst t_elm) (snd t_elm)
      \<and> (\<forall>h \<in> set (lookup_3 (fst t_elm) test_triggers) - {snd t_elm}. \<not>Q (fst t_elm) h)))
      \<and> (\<forall>sync_1\<in>set(fst connector)-{sync_list}.\<exists>s_elm_1\<in>set(sync_1). P (fst s_elm_1) (snd s_elm_1)
      \<and> (\<forall>l \<in> set (lookup_3 (fst s_elm_1) test_synchron) - {snd s_elm_1}. \<not>P (fst s_elm_1) l))
    )
))
\<and> (\<forall>j \<in> set test_synchron. \<forall>u \<in> set j. \<forall>t \<in> set u. \<forall>l \<in> set (snd t).(P (fst t) l \<longrightarrow> (\<forall>l1 \<in> set (snd t) - {l}. \<not>P (fst t) l1)))
\<and> (\<forall>i \<in> set test_triggers. \<forall>v \<in> set i. \<forall>k \<in> set v. \<forall>h \<in> set (snd k).(Q (fst k) h \<longrightarrow> (\<forall>h1 \<in> set (snd k) - {h}. \<not>Q (fst k) h1))))
"

(*Requires*)
value "\<forall>connector\<in>set JavaBIP_Connector_2.\<forall>sync_list\<in>set (fst connector).\<forall>sync\<in>set sync_list. (P (fst sync) (snd sync) \<longrightarrow> 
      ((\<exists>trig_list\<in>set(snd connector).\<exists>trig\<in>set trig_list. \<forall>t_elm\<in>set trig. (Q (fst t_elm) (snd t_elm)
      \<and> (\<forall>h \<in> set (lookup_3 (fst t_elm) test_triggers) - {snd t_elm}. \<not>Q (fst t_elm) h)))
      \<and> (\<forall>sync_1\<in>set(fst connector)-{sync_list}.\<exists>s_elm_1\<in>set(sync_1). P (fst s_elm_1) (snd s_elm_1)
      \<and> (\<forall>l \<in> set (lookup_3 (fst s_elm_1) test_synchron) - {snd s_elm_1}. \<not>P (fst s_elm_1) l))
    )
)"

(*Accepts*)
value "\<forall>j \<in> set test_synchron. \<forall>u \<in> set j. \<forall>t \<in> set u. \<forall>l \<in> set (snd t).(P (fst t) l \<longrightarrow> (\<forall>l1 \<in> set (snd t) - {l}. P (fst t) l1))"
value "(\<forall>j \<in> set test_synchron. \<forall>u \<in> set j. \<forall>t \<in> set u. \<exists>l \<in> set (snd t).\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)"
value "\<forall>j \<in> set test_synchron. \<forall>u \<in> set j. \<forall>t \<in> set u. \<forall>l \<in> set (snd t).\<forall>l1 \<in> set (snd t) - {l}.(P (fst t) l \<longrightarrow> \<not>P (fst t) l1)"
value "(\<forall>i \<in> set test_triggers. \<forall>v \<in> set i. \<forall>k \<in> set v. \<forall>h \<in> set (snd k).(Q (fst k) h \<longrightarrow> (\<forall>h1 \<in> set (snd k) - {h}. \<not>Q (fst k) h1)))"
*)

end