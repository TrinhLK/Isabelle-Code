theory bip
  imports Main "/Volumes/Setup/Isabelle/Isabelle-Code/August/libs_functions"
begin

(*JavaBIP connector 2*)
fun mk_jvb :: "'a list \<Rightarrow> 'b \<Rightarrow> ('a \<times> 'b) list" where
"mk_jvb [] y = []"|
"mk_jvb (x#xs) y = [(Pair x) y] @ mk_jvb xs y"

value "mk_jvb (mk_pair_4_no_product test_synchron) (product_lists (mk_Trigger_list (mk_pair_4_no_product test_triggers)))"

value "mk_Trigger_list (mk_pair_4_no_product test_triggers)"

value "product_lists (mk_Trigger_list (mk_pair_4_no_product test_triggers))"

definition BIP_Connector_2 :: "((string \<times> string) list \<times> (string \<times> string) list list) list" where
"BIP_Connector_2 = List.product (concat (mk_pair_4 test_synchron)) (product_lists (mk_Trigger_list (mk_pair_4_no_product test_triggers)))"

value "BIP_Connector_2"
value "\<exists>connector \<in> set BIP_Connector_2.\<exists>sync\<in>set (fst connector).(P (fst sync) (snd sync) \<longrightarrow> 
((\<exists>trig\<in>set (snd connector).\<forall>elm\<in>set trig. Q (fst elm) (snd elm)) 
  \<and> (\<forall>sync1\<in>set (fst connector) - {sync}. P (fst sync1) (snd sync1))
  \<and> (\<forall>rs \<in> remaining_pairs (all_pairs test_synchron) (fst connector). \<not>P (fst rs) (snd rs))
  \<and> (\<forall>rt \<in> remaining_pairs (all_pairs test_triggers) (concat (snd connector)). \<not>Q (fst rt) (snd rt)))
)"

(*----old----*)
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