theory compare
  imports Main "/Volumes/Setup/Isabelle/Isabelle-Code/Jan21-Isab/trinhlibs"
begin
(*BIP*)
value "\<exists>bet \<in> set t_betaSet_1. (
  \<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(
    (\<not>P (fst t) l 
    \<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) 
    \<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1))
\<or> 
  (\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1) 
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) 
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)))
)"

(*JavaBIP*)
value "((\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j.\<forall>t \<in> set u. \<forall>l \<in> set (snd t). \<not>P (fst t) l) 
\<and> (\<forall>i \<in> set t_TrigInstance_1. \<forall>v \<in> set i. \<forall>k \<in> set v. \<exists>h \<in> set (snd k).\<forall>h1 \<in> set (snd k) - {h}. \<not> Q (fst k) h1))
\<or> ((\<exists>bet \<in> set t_betaSet_1. (\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1)) 
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)) 
\<and> (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u. \<exists>l \<in> set (snd t).\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t)  l1))"

lemma compare1:
"\<exists>bet \<in> set t_betaSet_1. (
  \<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(
    (\<not>P (fst t) l 
    \<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) 
    \<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1))
\<or> 
  (\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1) 
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) 
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)))
)
\<Longrightarrow> ((\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j.\<forall>t \<in> set u. \<forall>l \<in> set (snd t). \<not>P (fst t) l) 
\<and> (\<forall>i \<in> set t_TrigInstance_1. \<forall>v \<in> set i. \<forall>k \<in> set v. \<exists>h \<in> set (snd k).\<forall>h1 \<in> set (snd k) - {h}. \<not> Q (fst k) h1))
\<or> ((\<exists>bet \<in> set t_betaSet_1. (\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1)) 
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)) 
\<and> (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u. \<exists>l \<in> set (snd t).\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t)  l1))"

end