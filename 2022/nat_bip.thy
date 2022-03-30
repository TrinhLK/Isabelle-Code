theory nat_bip
  imports Main "/Volumes/Setup/Isabelle/Isabelle-Code/2022/libs_nat_functions"
begin

value "((\<forall>connector\<in>set Connector.\<forall>sync_list\<in>set (fst connector).\<forall>sync\<in>set sync_list. \<exists>trig_list\<in>set(snd connector).(P ((fst sync),(snd sync)) \<longrightarrow> 
      (( \<exists>trig\<in>set trig_list.\<forall>t_elm\<in>set trig. (Q ((fst t_elm), (snd t_elm))
       ))                          
      \<and> (\<forall>sync_1\<in>set(fst connector)-{sync_list}.\<exists>s_elm_1\<in>set(sync_1). P ((fst s_elm_1),(snd s_elm_1))
      )
    )
))\<and> (\<forall>j \<in> set test_synchron. \<forall>u \<in> set j. \<forall>t \<in> set u. \<forall>l \<in> set (snd t).(P ((fst t), l) \<longrightarrow> (\<forall>l1 \<in> set (snd t) - {l}. \<not>P ((fst t), l1))))
\<and> (\<forall>i \<in> set test_triggers. \<forall>v \<in> set i. \<forall>k \<in> set v. \<forall>h \<in> set (snd k).(Q ((fst k), h) \<longrightarrow> (\<forall>h1 \<in> set (snd k) - {h}. \<not>Q ((fst k), h1)))))"

end
(*
value "Pair (concat (mk_pair_4 test_synchron)) (mk_pair_4 (make_betaSet_3 test_triggers))"
value "(mk_pair_4_no_product test_synchron)" 

definition BIP_Connector :: "(string \<times> string) list list \<times> (string \<times> string) list list list" where
"BIP_Connector = Pair (concat (mk_pair_4 test_synchron)) (mk_pair_4 (make_betaSet_3 test_triggers))"

value "BIP_Connector"
value "(\<forall>syncList \<in> set (fst BIP_Connector).\<forall>sync \<in> set syncList. 
  P (fst sync) (snd sync) \<longrightarrow> 
    ((\<exists>trigList \<in> set (snd BIP_Connector).\<exists>trig \<in> set trigList.\<exists>elm \<in> set trig. Q (fst elm) (snd elm)) \<and> (\<forall>sync1 \<in> set syncList - {sync}. P (fst sync1) (snd sync1))
  )
)"

definition BIP_Connector_2 :: "((string \<times> string) list list \<times> (string \<times> string) list list list) list" where
"BIP_Connector_2 = mk_jvb (mk_pair_4_no_product test_synchron) (mk_pair_4 (make_betaSet_3 test_triggers))"

value "BIP_Connector_2"
*)