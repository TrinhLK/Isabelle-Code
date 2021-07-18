theory simple_stuffs
  imports Main "/Volumes/Setup/Isabelle/Isabelle-Code/Jan21-Isab/trinhlibs"
begin

(*BIP*)
value "\<exists>bet \<in> set t_betaSet_1.((\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<forall>l \<in> set (snd t).(\<not>P (fst t) l))  \<and> ((\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)))"

lemma test_eq: 
"\<exists>bet \<in> set t_betaSet_1.((\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<forall>l \<in> set (snd t).(\<not>P (fst t) l))  \<and> ((\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)))
\<Longrightarrow> ((\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<forall>l \<in> set (snd t).(\<not>P (fst t) l))  \<and> (\<exists>bet \<in> set t_betaSet_1.(\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)))"
  by simp

value t_betaSet_1

value "(\<exists>bet \<in> set t_betaSet_1.
          \<forall>elm \<in> set bet.
            \<forall>el1 \<in> set elm.
              \<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)"

(*JavaBIP*)
value "(\<forall>i \<in> set t_TrigInstance_1. 
          \<forall>v \<in> set i. 
            \<forall>k \<in> set v. 
              \<exists>h \<in> set (snd k).
                \<forall>h1 \<in> set (snd k) - {h}. \<not> Q (fst k) h1)"

lemma test_eq_2:
"(\<exists>bet \<in> set t_betaSet_1.\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)
\<Longrightarrow>(\<forall>i \<in> set t_TrigInstance_1. \<forall>v \<in> set i. \<forall>k \<in> set v. \<exists>h \<in> set (snd k).\<forall>h1 \<in> set (snd k) - {h}. \<not> Q (fst k) h1) "
  unfolding t_betaSet_1_def t_SyncInstance_1_def t_TrigInstance_1_def
  sledgehammer

end