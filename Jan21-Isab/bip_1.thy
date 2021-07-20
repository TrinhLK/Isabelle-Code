theory bip_1
  imports Main "/Volumes/Setup/Isabelle/Isabelle-Code/Jan21-Isab/trinhlibs"
begin
(*2nd style:
(\<not>P(t,l) \<or> Q(el,el)) \<and> \<not>P(t,l1) \<and> \<not>Q(el1,h)
*)
value "\<exists>bet \<in> set t_betaSet_1. (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<not>P (fst t) l \<or> (\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1)))
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1))"

(*(\<not>P(t,l) \<or> Q(el1,el1)) \<and> \<not>P(t,l1) \<and> \<not>Q(el1,h)
\<equiv> [\<not>P(t,l) \<and> \<not>P(t,l1) \<and> \<not>Q(el1,h)] \<or> [Q(el1,el1) \<and> \<not>P(t,l1) \<and> \<not>Q(el1,h)]*)
value "\<exists>bet \<in> set t_betaSet_1. 
(
  \<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(
    (\<not>P (fst t) l 
      \<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) 
      \<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)
    )
  \<or> 
    (\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1)) 
      \<and> ((\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) 
      \<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)
    )
  )
)"

lemma trans_1: "\<exists>bet \<in> set t_betaSet_1. (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<not>P (fst t) l \<or> (\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1)))
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1))
\<Longrightarrow> \<exists>bet \<in> set t_betaSet_1. 
(
  \<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(
    (\<not>P (fst t) l 
      \<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) 
      \<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)
    )
  \<or> 
    (\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1)) 
      \<and> ((\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) 
      \<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)
    )
  )
)"
  by metis

(*2nd style:
(\<not>P(t,l) \<or> Q(el,el)) \<and> \<not>P(t,l1) \<and> \<not>Q(el1,h)
*)
value "\<exists>bet \<in> set t_betaSet_1. (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<not>P (fst t) l \<or> (\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1)))
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1))"

value "(\<exists>bet \<in> set t_betaSet_1. \<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<not>P (fst t) l \<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)))
\<or> (\<exists>bet \<in> set t_betaSet_1. \<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).((\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1)) 
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)))
"

lemma trans_2: "
\<exists>bet \<in> set t_betaSet_1. 
(
  \<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(
    (\<not>P (fst t) l 
      \<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) 
      \<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)
    )
  \<or> 
    (\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1)) 
      \<and> ((\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) 
      \<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)
    )
  )
)
\<Longrightarrow>
(\<exists>bet \<in> set t_betaSet_1. \<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).(\<not>P (fst t) l \<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)))
\<or> (\<exists>bet \<in> set t_betaSet_1. \<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).((\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1)) 
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)))
"
  by metis

(*Ve thu 1: \<not>P(t,l) \<and> \<not>P(t,l1) \<and> \<not>Q(el1,h)*)
value "\<exists>bet \<in> set t_betaSet_1. \<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u.\<exists>l \<in> set (snd t).(\<not>P (fst t) l \<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1))"

value "(\<exists>bet \<in> set t_betaSet_1.\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) \<and> (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u.\<forall>l \<in> set (snd t).(\<not>P (fst t) l))"

(*Rut gon ve thu 1: \<not>P(t,l) \<and> \<not>Q(el1,h) -- DONE*)
lemma trans_3_1: "\<exists>bet \<in> set t_betaSet_1. \<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u.\<exists>l \<in> set (snd t).(\<not>P (fst t) l \<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1))
\<Longrightarrow> (\<exists>bet \<in> set t_betaSet_1.\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) \<and> (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u.\<forall>l \<in> set (snd t).(\<not>P (fst t) l))"
  by (metis (mono_tags, hide_lams) Diff_iff list.set_intros(1) singletonD t_SyncInstance_1_def)

(*Ve thu 2: Q(el,el) \<and> \<not>P(t,l1) \<and> \<not>Q(el1,h)*)
value "(\<exists>bet \<in> set t_betaSet_1. \<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).((\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1)) 
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)))"

(*Ve thu 2 phan tach: Q(el,el) \<and> \<not>P(t,l1) \<and> \<not>Q(el1,h)*)
value "((\<exists>bet \<in> set t_betaSet_1. (\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1)) 
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)
) 
\<and> (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1))"

(*Phan tach ve thu 2: Q(el,el) \<and> \<not>P(t,l1) \<and> \<not>Q(el1,h) -- DONE*)
lemma trans_3_2: "(\<exists>bet \<in> set t_betaSet_1. \<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).((\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1)) 
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)
\<and> (\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)))
\<Longrightarrow>((\<exists>bet \<in> set t_betaSet_1. ((\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1)) 
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h))) 
\<and> (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1))"
  by (metis (mono_tags, hide_lams) list.set_intros(1) t_SyncInstance_1_def)

(*BIP sau khi chuyen doi*)
value "((\<exists>bet \<in> set t_betaSet_1.\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) \<and> (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u.\<forall>l \<in> set (snd t).(\<not>P (fst t) l)))
\<or> ((\<exists>bet \<in> set t_betaSet_1. (\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1)) 
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)
) 
\<and>  (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<exists>t \<in> set u.\<exists>l \<in> set (snd t).\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1))"

(*JavaBIP sau khi chuyen doi*)
value "((\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j.\<forall>t \<in> set u. \<forall>l \<in> set (snd t). \<not>P (fst t) l)
\<and> (\<forall>i \<in> set t_TrigInstance_1. \<forall>v \<in> set i. \<forall>k \<in> set v. \<exists>h \<in> set (snd k).\<forall>h1 \<in> set (snd k) - {h}. \<not> Q (fst k) h1)
\<or> (\<exists>bet \<in> set t_betaSet_1. (\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1)) \<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)) \<and> (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u. \<exists>l \<in> set (snd t).\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t)  l1))"

(*JavaBIP ve 1*)
value "((\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j.\<forall>t \<in> set u. \<forall>l \<in> set (snd t). \<not>P (fst t) l)
\<and> (\<forall>i \<in> set t_TrigInstance_1. \<forall>v \<in> set i. \<forall>k \<in> set v. \<exists>h \<in> set (snd k).\<forall>h1 \<in> set (snd k) - {h}. \<not> Q (fst k) h1))"
(*BIP ve 1*)
value "(\<exists>bet \<in> set t_betaSet_1.\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) \<and> (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u.\<forall>l \<in> set (snd t).(\<not>P (fst t) l))"

lemma test:"((\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j.\<forall>t \<in> set u. \<forall>l \<in> set (snd t). \<not>P (fst t) l)
\<and> (\<forall>i \<in> set t_TrigInstance_1. \<forall>v \<in> set i. \<forall>k \<in> set v. \<exists>h \<in> set (snd k).\<forall>h1 \<in> set (snd k) - {h}. \<not> Q (fst k) h1))
\<Longrightarrow> (\<exists>bet \<in> set t_betaSet_1.\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h) \<and> (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u.\<forall>l \<in> set (snd t).(\<not>P (fst t) l))"
  using my_equiv
  by blast
  
end