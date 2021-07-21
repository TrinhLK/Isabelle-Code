theory bip_2
  imports Main "/Volumes/Setup/Isabelle/Isabelle-Code/Jan21-Isab/trinhlibs"
begin
declare [[smt_timeout = 1000000]]
(*2nd style:
(\<not>P(t,l) \<or> Q(el,el)) \<and> \<not>P(t,l1) \<and> \<not>Q(el1,h)
*)
value "\<exists>bet \<in> set t_betaSet_1. (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<not>P (fst t) l \<or> (\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1)))
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)
\<and> (\<forall>j1 \<in> set t_SyncInstance_1.\<forall>u1 \<in> set j1.\<forall>t1 \<in> set u1-{t}.\<forall>l2 \<in> set (snd t1). \<not> P (fst t1) l2)
)"

(*Ve 1: \<not>P(t,l) \<and> \<not>P(t,l1) \<and> \<not>Q(el1,h) *)
value "\<exists>bet \<in> set t_betaSet_1.(\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<not>P (fst t) l)
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)
\<and> (\<forall>j1 \<in> set t_SyncInstance_1.\<forall>u1 \<in> set j1.\<forall>t1 \<in> set u1-{t}.\<forall>l2 \<in> set (snd t1). \<not> P (fst t1) l2)
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)
)"

lemma test_1:
"\<exists>bet \<in> set t_betaSet_1.(\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<not>P (fst t) l)
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)
\<and> (\<forall>j1 \<in> set t_SyncInstance_1.\<forall>u1 \<in> set j1.\<forall>t1 \<in> set u1-{t}.\<forall>l2 \<in> set (snd t1). \<not> P (fst t1) l2)
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)
)
\<Longrightarrow> (\<exists>bet \<in> set t_betaSet_1.(\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<not>P (fst t) l)
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)))"
  by metis

lemma test_2:
"\<exists>bet \<in> set t_betaSet_1.(\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<not>P (fst t) l)
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)
\<and> (\<forall>j1 \<in> set t_SyncInstance_1.\<forall>u1 \<in> set j1.\<forall>t1 \<in> set u1-{t}.\<forall>l2 \<in> set (snd t1). \<not> P (fst t1) l2)
)
\<Longrightarrow> (\<exists>bet \<in> set t_betaSet_1.(\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<not>P (fst t) l)))"
  by metis

lemma test_3:"(\<exists>bet \<in> set t_betaSet_1.(\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<not>P (fst t) l)
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)))
\<Longrightarrow>
((\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<not>P (fst t) l)) \<and> (\<exists>bet \<in> set t_betaSet_1.\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h))"
  by (metis list.set_intros(1) t_SyncInstance_1_def)

lemma bip_ve_1:"(\<exists>bet \<in> set t_betaSet_1.(\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<not>P (fst t) l)
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)
\<and> (\<forall>j1 \<in> set t_SyncInstance_1.\<forall>u1 \<in> set j1.\<forall>t1 \<in> set u1-{t}.\<forall>l2 \<in> set (snd t1). \<not> P (fst t1) l2)
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)))
\<Longrightarrow> ((\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<not>P (fst t) l)) \<and> (\<exists>bet \<in> set t_betaSet_1.\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h))"
  by (metis (mono_tags, hide_lams) test_3)

(*
(\<not>P(t,l) \<or> Q(el,el)) \<and> \<not>P(t,l1) \<and> \<not>Q(el1,h)
\<equiv> \<not>P(t,l) \<and> \<not>P(t,l1) \<and> \<not>Q(el1,h) \<or> Q(el,el)\<and> \<not>P(t,l1) \<and> \<not>Q(el1,h)
*)
(*Ve 2: Q(el,el)\<and> \<not>P(t,l1) \<and> \<not>Q(el1,h) *)
value "\<exists>bet \<in> set t_betaSet_1. (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).
(\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1))
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)
\<and> (\<forall>j1 \<in> set t_SyncInstance_1.\<forall>u1 \<in> set j1.\<forall>t1 \<in> set u1-{t}.\<forall>l2 \<in> set (snd t1). \<not> P (fst t1) l2)
)"  

(*Ve 2: Chuyen P vao trong*)
value "\<exists>bet \<in> set t_betaSet_1. (
(\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1))
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)
\<and> (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)
\<and> (\<forall>j1 \<in> set t_SyncInstance_1.\<forall>u1 \<in> set j1.\<forall>t1 \<in> set u1-{t}.\<forall>l2 \<in> set (snd t1). \<not> P (fst t1) l2)
))"  

lemma ve2_trans1: "(\<exists>bet \<in> set t_betaSet_1. (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).
(\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1))
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)
\<and> (\<forall>j1 \<in> set t_SyncInstance_1.\<forall>u1 \<in> set j1.\<forall>t1 \<in> set u1-{t}.\<forall>l2 \<in> set (snd t1). \<not> P (fst t1) l2)
)) \<Longrightarrow>
(\<exists>bet \<in> set t_betaSet_1. (
(\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1))
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)
\<and> (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)
\<and> (\<forall>j1 \<in> set t_SyncInstance_1.\<forall>u1 \<in> set j1.\<forall>t1 \<in> set u1-{t}.\<forall>l2 \<in> set (snd t1). \<not> P (fst t1) l2)
)))"
  sledgehammer

value "((\<exists>bet \<in> set t_betaSet_1. (\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1)) \<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)) \<and> (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u. \<exists>l \<in> set (snd t).\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t)  l1))" 








