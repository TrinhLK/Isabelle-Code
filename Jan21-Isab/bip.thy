theory bip
  imports Main "/Volumes/Setup/Isabelle/Isabelle-Code/Jan21-Isab/trinhlibs"
begin

(*---- BIP encoding - 1st trans----*)
(*2nd style*)
value "\<exists>bet \<in> set t_betaSet_1. (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<not>P (fst t) l \<or> (\<forall>export \<in> set bet.\<exists>elm \<in> set export. Q (fst elm) (snd elm)))
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)
)"

(*2nd style - 1trans*)
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

lemma fst_trans: "\<exists>bet \<in> set t_betaSet_1. (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<not>P (fst t) l \<or> (\<forall>export \<in> set bet.\<exists>elm \<in> set export. Q (fst elm) (snd elm)))
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)
)
\<Longrightarrow> \<exists>bet \<in> set t_betaSet_1. (
  \<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(
    (\<not>P (fst t) l 
    \<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) 
    \<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1))
\<or> 
  (\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1) 
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) 
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)))
)"
  unfolding t_betaSet_1_def t_SyncInstance_1_def t_TrigInstance_1_def
  by metis

(*---- BIP encoding - 2nd trans----*)
value "\<exists>bet \<in> set t_betaSet_1. 
(
  \<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(
    (\<not>P (fst t) l 
      \<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) 
      \<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)
    )
  \<or> 
    (\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1) 
      \<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) 
      \<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)
    )
  )
)"

(*---- 2nd-trans - the 1st-sub ----*)
value "\<exists>bet \<in> set t_betaSet_1.(\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<not>P (fst t) l  \<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) \<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)))"

value "\<exists>bet \<in> set t_betaSet_1.((\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<forall>l \<in> set (snd t).(\<not>P (fst t) l))  \<and> ((\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)))"

lemma test_1st_sub: "\<exists>bet \<in> set t_betaSet_1.(\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<not>P (fst t) l  \<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) \<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)))
\<Longrightarrow> \<exists>bet \<in> set t_betaSet_1.((\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<forall>l \<in> set (snd t).(\<not>P (fst t) l))  \<and> ((\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)))"
  unfolding t_betaSet_1_def t_SyncInstance_1_def t_TrigInstance_1_def
  by (metis Diff_iff list.set_intros(1) singletonD)

(*---- compare 1st part ----*) 
(*BIP*)
value "\<exists>bet \<in> set t_betaSet_1.((\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<forall>l \<in> set (snd t).(\<not>P (fst t) l))  \<and> ((\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)))"
(*JavaBIP*)
value "((\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j.\<forall>t \<in> set u. \<forall>l \<in> set (snd t). \<not>P (fst t) l) 
\<and> (\<forall>i \<in> set t_TrigInstance_1. \<forall>v \<in> set i. \<forall>k \<in> set v. \<exists>h \<in> set (snd k).\<forall>h1 \<in> set (snd k) - {h}. \<not> Q (fst k) h1))"

(*
lemma compare1: "\<exists>bet \<in> set t_betaSet_1.((\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<forall>l \<in> set (snd t).(\<not>P (fst t) l))  \<and> ((\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)))
==> ((\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j.\<forall>t \<in> set u. \<forall>l \<in> set (snd t). \<not>P (fst t) l) 
\<and> (\<forall>i \<in> set t_TrigInstance_1. \<forall>v \<in> set i. \<forall>k \<in> set v. \<exists>h \<in> set (snd k).\<forall>h1 \<in> set (snd k) - {h}. \<not> Q (fst k) h1))" 
  unfolding t_betaSet_1_def t_SyncInstance_1_def t_TrigInstance_1_def
  sledgehammer
*)
(*---- END the 1st-sub ----*)



(*-----------------------------------------------------------------------------------------------*)
(*---- 2nd-trans - the 2nd-sub ----*)
value "
\<exists>bet \<in> set t_betaSet_1.(\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).
(\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1) 
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) \<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1) ))"

value "
(\<exists>bet \<in> set t_betaSet_1.(
(\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1)) 
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)) 
\<and> (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u. \<exists>l \<in> set (snd t).\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1))"

lemma test_2nd_sub: "
\<exists>bet \<in> set t_betaSet_1.(\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1) 
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) \<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1) ))
\<Longrightarrow>
(\<exists>bet \<in> set t_betaSet_1.(
(\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1)) 
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)) 
\<and> (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u. \<exists>l \<in> set (snd t).\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1))
"
  unfolding t_betaSet_1_def t_SyncInstance_1_def t_TrigInstance_1_def
  sledgehammer

(*---- END the 2nd-sub ----*)

(*---- split the 2nd-trans ----*)
lemma split_2ndtrans:"
\<exists>bet \<in> set t_betaSet_1. 
(
  \<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(
    (\<not>P (fst t) l 
      \<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) 
      \<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)
    )
  \<or> 
    (\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1) 
      \<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) 
      \<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)
    )
  )
)
\<Longrightarrow> (\<exists>bet \<in> set t_betaSet_1.(\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<not>P (fst t) l  \<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) \<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)))) 
\<or>
(\<exists>bet \<in> set t_betaSet_1.(\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1) 
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) 
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1))))
"
  unfolding t_betaSet_1_def t_TrigInstance_1_def t_SyncInstance_1_def
  by smt

(*3rd trans --- split*)
lemma sample: "\<lbrakk>A \<Longrightarrow> C; B \<Longrightarrow> D\<rbrakk> \<Longrightarrow> A \<or> B \<Longrightarrow> C \<or> D"
  by blast
lemma third_trans:"
(\<exists>bet \<in> set t_betaSet_1.(\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<not>P (fst t) l  \<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) \<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)))) 
\<or>
(\<exists>bet \<in> set t_betaSet_1.(\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1) 
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) 
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1))))
\<Longrightarrow> (\<exists>bet \<in> set t_betaSet_1.((\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<forall>l \<in> set (snd t).(\<not>P (fst t) l))  \<and> ((\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h))))
\<or>
((\<exists>bet \<in> set t_betaSet_1. (\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1)) 
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)) 
\<and> (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u. \<exists>l \<in> set (snd t).\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t)  l1))
"
  using test_1st_sub test_2nd_sub
  sledgehammer





lemma snd_trans: "\<exists>bet \<in> set t_betaSet_1. (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(
(\<not>P (fst t) l 
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) 
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1))
\<or> 
(\<forall>export \<in> set bet.\<exists>elm \<in> set export. Q (fst elm) (snd elm) 
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) 
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)))
) \<Longrightarrow>
\<exists>bet \<in> set t_betaSet_1. 
(\<forall>j \<in> set t_SyncInstance_1.\<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<not>P (fst t) l 
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) 
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)))
\<or> 
(\<forall>j \<in> set t_SyncInstance_1.\<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<forall>export \<in> set bet.\<exists>elm \<in> set export. Q (fst elm) (snd elm) 
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) 
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)))"
  unfolding t_betaSet_1_def t_SyncInstance_1_def t_TrigInstance_1_def
  by smt

(*---- BIP encoding - 3rd trans----*)
value "\<exists>bet \<in> set t_betaSet_1. 
(\<forall>j \<in> set t_SyncInstance_1.\<forall>u \<in> set j. \<exists>t \<in> set u.\<forall>l \<in> set (snd t).(\<not>P (fst t) l)) 
\<and> (\<forall>j \<in> set t_SyncInstance_1.\<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<forall>bet \<in> set t_betaSet_1.\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h))
\<or> 
(\<forall>j \<in> set t_SyncInstance_1.\<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<forall>export \<in> set bet.\<exists>elm \<in> set export. Q (fst elm) (snd elm) 
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) 
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)))" 

value "\<exists>bet \<in> set t_betaSet_1. 
(\<forall>j \<in> set t_SyncInstance_1.\<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<not>P (fst t) l)) 
\<and> (\<forall>j \<in> set t_SyncInstance_1.\<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h))
\<or> 
(\<forall>j \<in> set t_SyncInstance_1.\<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<forall>export \<in> set bet.\<exists>elm \<in> set export. Q (fst elm) (snd elm) 
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) 
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)))" 

lemma third_trans: "\<exists>bet \<in> set t_betaSet_1. 
(\<forall>j \<in> set t_SyncInstance_1.\<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<not>P (fst t) l 
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) 
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)))
\<or> 
(\<forall>j \<in> set t_SyncInstance_1.\<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<forall>export \<in> set bet.\<exists>elm \<in> set export. Q (fst elm) (snd elm) 
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) 
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)))
\<Longrightarrow> 
\<exists>bet \<in> set t_betaSet_1. 
(\<forall>j \<in> set t_SyncInstance_1.\<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<not>P (fst t) l)) 
\<and> (\<forall>j \<in> set t_SyncInstance_1.\<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h))
\<or> 
(\<forall>j \<in> set t_SyncInstance_1.\<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<forall>export \<in> set bet.\<exists>elm \<in> set export. Q (fst elm) (snd elm) 
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) 
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)))"
  unfolding t_betaSet_1_def t_SyncInstance_1_def t_TrigInstance_1_def
  by smt

value "\<exists>bet \<in> set t_betaSet_1. 
(\<forall>j \<in> set t_SyncInstance_1.\<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<not>P (fst t) l)) 
\<and> (\<forall>j \<in> set t_SyncInstance_1.\<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h))
\<or> 
(\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1) \<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) \<and> (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u. \<exists>l \<in> set (snd t).\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t)  l1) )"

lemma third_trans_1: "\<exists>bet \<in> set t_betaSet_1. 
(\<forall>j \<in> set t_SyncInstance_1.\<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<not>P (fst t) l)) 
\<and> (\<forall>j \<in> set t_SyncInstance_1.\<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h))
\<or> 
(\<forall>j \<in> set t_SyncInstance_1.\<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<forall>export \<in> set bet.\<exists>elm \<in> set export. Q (fst elm) (snd elm) 
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) 
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)))
\<Longrightarrow> 
\<exists>bet \<in> set t_betaSet_1. 
(\<forall>j \<in> set t_SyncInstance_1.\<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<not>P (fst t) l)) 
\<and> (\<forall>j \<in> set t_SyncInstance_1.\<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h))
\<or> 
(\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1) \<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) \<and> (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u. \<exists>l \<in> set (snd t).\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t)  l1) )" 
  unfolding t_betaSet_1_def t_SyncInstance_1_def t_TrigInstance_1_def
  by (smt DiffI Diff_empty Diff_insert0 empty_Diff insertI1 insert_Diff1 insert_Diff_if insert_Diff_single insert_absorb insert_commute insert_iff insert_not_empty list.discI list.set_cases list.set_intros(1) list.set_intros(1) list.set_intros(1) list.set_intros(1) list.simps(15) list.simps(15) list.simps(15) mk_disjoint_insert numeral_eq_iff numeral_eq_one_iff semiring_norm(86) semiring_norm(88) set_ConsD set_empty set_empty set_empty singletonD singletonD singletonD singletonI snd_conv)


(*---- JavaBIP encoding ----*)
value "((\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j.\<forall>t \<in> set u. \<forall>l \<in> set (snd t). \<not>P (fst t) l) 
\<and> (\<forall>i \<in> set t_TrigInstance_1. \<forall>v \<in> set i. \<forall>k \<in> set v. \<exists>h \<in> set (snd k).\<forall>h1 \<in> set (snd k) - {h}. \<not> Q (fst k) h1))
\<or> ((\<exists>bet \<in> set t_betaSet_1. (\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1)) \<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)) \<and> (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u. \<exists>l \<in> set (snd t).\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t)  l1))"

lemma compare: "
((\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j.\<forall>t \<in> set u. \<forall>l \<in> set (snd t). \<not>P (fst t) l) 
\<and> (\<forall>i \<in> set t_TrigInstance_1. \<forall>v \<in> set i. \<forall>k \<in> set v. \<exists>h \<in> set (snd k).\<forall>h1 \<in> set (snd k) - {h}. \<not> Q (fst k) h1))
\<or> ((\<exists>bet \<in> set t_betaSet_1. (\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1)) \<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)) \<and> (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u. \<exists>l \<in> set (snd t).\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t)  l1)) \<Longrightarrow>
\<exists>bet \<in> set t_betaSet_1. 
(\<forall>j \<in> set t_SyncInstance_1.\<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<not>P (fst t) l)) 
\<and> (\<forall>j \<in> set t_SyncInstance_1.\<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h))
\<or> 
(\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1) \<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) \<and> (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u. \<exists>l \<in> set (snd t).\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t)  l1) )
"
  unfolding t_betaSet_1_def t_SyncInstance_1_def t_TrigInstance_1_def
  sledgehammer
end