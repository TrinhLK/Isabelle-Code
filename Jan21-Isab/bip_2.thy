theory bip_2
  imports Main "/Volumes/Setup/Isabelle/Isabelle-Code/Jan21-Isab/trinhlibs"
begin
(*2nd style:
(\<not>P(t,l) \<or> Q(el,el)) \<and> \<not>P(t,l1) \<and> \<not>Q(el1,h)
*)
value "\<exists>bet \<in> set t_betaSet_1. (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<not>P (fst t) l \<or> (\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1)))
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)
\<and> (\<forall>t1 \<in> set u - {t}.\<forall>l2 \<in> set (snd t1). \<not> P (fst t1) l2)
\<and> (\<forall>u1 \<in> set j - {u}.\<forall>t1 \<in> set u1.\<forall>l2 \<in> set (snd t1). \<not> P (fst t1) l2)
\<and> (\<forall>j1 \<in> set t_SyncInstance_1 - {j}.\<forall>u1 \<in> set j1.\<forall>t1 \<in> set u1.\<forall>l2 \<in> set (snd t1). \<not> P (fst t1) l2)
)"
(*
(\<not>P(t,l) \<or> Q(el,el)) \<and> \<not>P(t,l1) \<and> \<not>Q(el1,h)
\<equiv> \<not>P(t,l) \<and> \<not>P(t,l1) \<and> \<not>Q(el1,h) \<or> Q(el,el)\<and> \<not>P(t,l1) \<and> \<not>Q(el1,h)
*)
(*Ve 1: \<not>P(t,l) \<and> \<not>P(t,l1) \<and> \<not>Q(el1,h) *)
value "(\<exists>bet \<in> set t_betaSet_1. (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<not>P (fst t) l)
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)
\<and> (\<forall>t1 \<in> set u - {t}.\<forall>l2 \<in> set (snd t1). \<not> P (fst t1) l2)
\<and> (\<forall>u1 \<in> set j - {u}.\<forall>t1 \<in> set u1.\<forall>l2 \<in> set (snd t1). \<not> P (fst t1) l2)
\<and> (\<forall>j1 \<in> set t_SyncInstance_1 - {j}.\<forall>u1 \<in> set j1.\<forall>t1 \<in> set u1.\<forall>l2 \<in> set (snd t1). \<not> P (fst t1) l2)
))"

value "\<exists>bet \<in> set t_betaSet_1. ((\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<not>P (fst t) l)
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)
\<and> (\<forall>t1 \<in> set u - {t}.\<forall>l2 \<in> set (snd t1). \<not> P (fst t1) l2)
\<and> (\<forall>u1 \<in> set j - {u}.\<forall>t1 \<in> set u1.\<forall>l2 \<in> set (snd t1). \<not> P (fst t1) l2)
\<and> (\<forall>j1 \<in> set t_SyncInstance_1 - {j}.\<forall>u1 \<in> set j1.\<forall>t1 \<in> set u1.\<forall>l2 \<in> set (snd t1). \<not> P (fst t1) l2))
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)
)"


value "(\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<not>P (fst t) l)
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)
\<and> (\<forall>t1 \<in> set u - {t}.\<forall>l2 \<in> set (snd t1). \<not> P (fst t1) l2)
\<and> (\<forall>u1 \<in> set j - {u}.\<forall>t1 \<in> set u1.\<forall>l2 \<in> set (snd t1). \<not> P (fst t1) l2)
\<and> (\<forall>j1 \<in> set t_SyncInstance_1 - {j}.\<forall>u1 \<in> set j1.\<forall>t1 \<in> set u1.\<forall>l2 \<in> set (snd t1). \<not> P (fst t1) l2)
)"

declare [[smt_timeout = 1000000]]
lemma compare_1: "(\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<not>P (fst t) l)
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)
\<and> (\<forall>t1 \<in> set u - {t}.\<forall>l2 \<in> set (snd t1). \<not> P (fst t1) l2)
\<and> (\<forall>u1 \<in> set j - {u}.\<forall>t1 \<in> set u1.\<forall>l2 \<in> set (snd t1). \<not> P (fst t1) l2)
\<and> (\<forall>j1 \<in> set t_SyncInstance_1 - {j}.\<forall>u1 \<in> set j1.\<forall>t1 \<in> set u1.\<forall>l2 \<in> set (snd t1). \<not> P (fst t1) l2)
) \<Longrightarrow> (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u.\<forall>l \<in> set (snd t).(\<not>P (fst t) l))"
  by (metis insert_Diff insert_iff)

lemma compare_2: "(\<exists>bet \<in> set t_betaSet_1.(\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<not>P (fst t) l)
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)
\<and> (\<forall>t1 \<in> set u - {t}.\<forall>l2 \<in> set (snd t1). \<not> P (fst t1) l2)
\<and> (\<forall>u1 \<in> set j - {u}.\<forall>t1 \<in> set u1.\<forall>l2 \<in> set (snd t1). \<not> P (fst t1) l2)
\<and> (\<forall>j1 \<in> set t_SyncInstance_1 - {j}.\<forall>u1 \<in> set j1.\<forall>t1 \<in> set u1.\<forall>l2 \<in> set (snd t1). \<not> P (fst t1) l2))
) \<Longrightarrow> (\<exists>bet \<in> set t_betaSet_1.(\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u.\<forall>l \<in> set (snd t).(\<not>P (fst t) l)))"
  using compare_1 by blast

lemma compare_3: "(\<exists>bet \<in> set t_betaSet_1.(\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<not>P (fst t) l)
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)
\<and> (\<forall>t1 \<in> set u - {t}.\<forall>l2 \<in> set (snd t1). \<not> P (fst t1) l2)
\<and> (\<forall>u1 \<in> set j - {u}.\<forall>t1 \<in> set u1.\<forall>l2 \<in> set (snd t1). \<not> P (fst t1) l2)
\<and> (\<forall>j1 \<in> set t_SyncInstance_1 - {j}.\<forall>u1 \<in> set j1.\<forall>t1 \<in> set u1.\<forall>l2 \<in> set (snd t1). \<not> P (fst t1) l2)
)
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)
) \<Longrightarrow> 
(\<exists>bet \<in> set t_betaSet_1.(\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u.\<forall>l \<in> set (snd t).(\<not>P (fst t) l))
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)
)"
  using compare_2

value "(\<exists>bet \<in> set t_betaSet_1.(\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u.\<forall>l \<in> set (snd t).(\<not>P (fst t) l))
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h))"

value "((\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u.\<forall>l \<in> set (snd t).(\<not>P (fst t) l))
\<and> (\<exists>bet \<in> set t_betaSet_1.\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h))"

lemma compare_4: "((\<exists>bet \<in> set t_betaSet_1.(\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u.\<forall>l \<in> set (snd t).(\<not>P (fst t) l))
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)))
\<Longrightarrow>
((\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u.\<forall>l \<in> set (snd t).(\<not>P (fst t) l))
\<and> (\<exists>bet \<in> set t_betaSet_1.\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h))"
  sledgehammer
  by blast

value "(\<exists>bet \<in> set t_betaSet_1.(\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<not>P (fst t) l)
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)
\<and> (\<forall>t1 \<in> set u - {t}.\<forall>l2 \<in> set (snd t1). \<not> P (fst t1) l2)
\<and> (\<forall>u1 \<in> set j - {u}.\<forall>t1 \<in> set u1.\<forall>l2 \<in> set (snd t1). \<not> P (fst t1) l2)
\<and> (\<forall>j1 \<in> set t_SyncInstance_1 - {j}.\<forall>u1 \<in> set j1.\<forall>t1 \<in> set u1.\<forall>l2 \<in> set (snd t1). \<not> P (fst t1) l2)
)
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)
)"

(*Ve 1 rutgon: \<not>P(t,l) \<and> \<not>P(t,l1) \<and> \<not>Q(el1,h) *)
value "(\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u.\<forall>l \<in> set (snd t).(\<not>P (fst t) l)) \<and>
(\<exists>bet \<in> set t_betaSet_1.\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)"

lemma BIP_ve1_rutgon: "(\<exists>bet \<in> set t_betaSet_1. (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<not>P (fst t) l)
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)
\<and> (\<forall>t1 \<in> set u - {t}.\<forall>l2 \<in> set (snd t1). \<not> P (fst t1) l2)
\<and> (\<forall>u1 \<in> set j - {u}.\<forall>t1 \<in> set u1.\<forall>l2 \<in> set (snd t1). \<not> P (fst t1) l2)
\<and> (\<forall>j1 \<in> set t_SyncInstance_1 - {j}.\<forall>u1 \<in> set j1.\<forall>t1 \<in> set u1.\<forall>l2 \<in> set (snd t1). \<not> P (fst t1) l2)
)) \<Longrightarrow>
(\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u.\<forall>l \<in> set (snd t).(\<not>P (fst t) l)) \<and>
(\<exists>bet \<in> set t_betaSet_1.\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) "
  sledgehammer


