theory bip
  imports Main "/Volumes/Setup/Isabelle/Isabelle-Code/August/libs_functions"
begin
definition BIP_Connector :: "((string \<times> string) list \<times> (string \<times> string) list list) list" where
"BIP_Connector = List.product (concat (make_betaSet_1 test_synchron)) (make_betaSet_1 test_triggers)"

value "BIP_Connector"

value "\<exists>connector\<in>set BIP_Connector.\<exists>sync\<in>set (fst connector).(P (fst sync) (snd sync) \<longrightarrow> (\<exists>trig\<in>set (snd connector).\<forall>elm\<in>set trig. Q (fst elm) (snd elm)))"
end