theory bip
  imports Main "/Volumes/Setup/Isabelle/Isabelle-Code/August/libs_functions"
begin

definition BIP_Connector :: "((string \<times> string) list \<times> (string \<times> string) list list) list" where
"BIP_Connector = List.product (concat (mk_pair_4 test_synchron)) (mk_pair_4 (make_betaSet_3 test_triggers))"

value "BIP_Connector"
value "remaining_pairs (all_pairs test_triggers) (concat (concat (mk_pair_3_no_product test_1_triggers)))"

value "(\<exists>connector\<in>set BIP_Connector.\<exists>sync\<in>set (fst connector).(P (fst sync) (snd sync) \<longrightarrow> ((\<exists>trig\<in>set (snd connector).\<forall>elm\<in>set trig. Q (fst elm) (snd elm)) 
  \<and> (\<forall>sync1\<in>set (fst connector) - {sync}. P (fst sync1) (snd sync1))
  \<and> (\<forall>rs \<in> remaining_pairs (all_pairs test_synchron) (fst connector). \<not>P (fst rs) (snd rs))
  \<and> (\<forall>rt \<in> remaining_pairs (all_pairs test_triggers) (concat (snd connector)). \<not>Q (fst rt) (snd rt)))
))"

end