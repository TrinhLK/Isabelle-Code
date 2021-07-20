theory javabip
  imports Main "/Volumes/Setup/Isabelle/Isabelle-Code/Jan21-Isab/trinhlibs"
begin

value "t_betaSet_1"
value "mk_pair_4 t_TrigInstance_1"

(*---- JavaBIP encoding ----*)
(*
(\<not>P(t,l) \<or> (Q(el1, el1) \<and> \<not>Q(el1,h))) \<and> \<not>P(t,l1) \<and> \<not>Q(k,h1)
\<equiv> [\<not>P(t,l) \<and> \<not>P(t,l1) \<and> \<not>Q(k,h1)] \<or> [Q(el1, el1) \<and> \<not>Q(el1,h) \<and> \<not>P(t,l1) \<and> \<not>Q(k,h1)]
*)
value "(\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j.\<forall>t \<in> set u. \<forall>l \<in> set (snd t). \<not>P (fst t) l \<or> (\<exists>bet \<in> set t_betaSet_1. (\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1)) \<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)))
\<and> (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u. \<exists>l \<in> set (snd t).\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1) 
\<and> (\<forall>i \<in> set t_TrigInstance_1. \<forall>v \<in> set i. \<forall>k \<in> set v. \<exists>h \<in> set (snd k).\<forall>h1 \<in> set (snd k) - {h}. \<not> Q (fst k) h1)"

(*---- JavaBIP encoding - 1st transform ----*)
(*[\<not>P(t,l) \<and> \<not>P(t,l1) \<and> \<not>Q(k,h1)]*)
value "((\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j.\<forall>t \<in> set u. \<forall>l \<in> set (snd t). \<not>P (fst t) l) 
\<and> (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u. \<exists>l \<in> set (snd t).\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t)  l1) 
\<and> (\<forall>i \<in> set t_TrigInstance_1. \<forall>v \<in> set i. \<forall>k \<in> set v. \<exists>h \<in> set (snd k).\<forall>h1 \<in> set (snd k) - {h}. \<not> Q (fst k) h1))" 

(*[Q(el1, el1) \<and> \<not>Q(el1,h) \<and> \<not>P(t,l1) \<and> \<not>Q(k,h1)]*)
value "((\<exists>bet \<in> set t_betaSet_1. (\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1)) \<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)) \<and> (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u. \<exists>l \<in> set (snd t).\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t)  l1) 
\<and> (\<forall>i \<in> set t_TrigInstance_1. \<forall>v \<in> set i. \<forall>k \<in> set v. \<exists>h \<in> set (snd k).\<forall>h1 \<in> set (snd k) - {h}. \<not> Q (fst k) h1))" 

(*[\<not>P(t,l) \<and> \<not>P(t,l1) \<and> \<not>Q(k,h1)] \<or> [Q(el1, el1) \<and> \<not>Q(el1,h) \<and> \<not>P(t,l1) \<and> \<not>Q(k,h1)]*)
value "
((\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j.\<forall>t \<in> set u. \<forall>l \<in> set (snd t). \<not>P (fst t) l) 
\<and> (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u. \<exists>l \<in> set (snd t).\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t)  l1) 
\<and> (\<forall>i \<in> set t_TrigInstance_1. \<forall>v \<in> set i. \<forall>k \<in> set v. \<exists>h \<in> set (snd k).\<forall>h1 \<in> set (snd k) - {h}. \<not> Q (fst k) h1))
\<or>
((\<exists>bet \<in> set t_betaSet_1. (\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1)) \<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)) \<and> (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u. \<exists>l \<in> set (snd t).\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t)  l1) 
\<and> (\<forall>i \<in> set t_TrigInstance_1. \<forall>v \<in> set i. \<forall>k \<in> set v. \<exists>h \<in> set (snd k).\<forall>h1 \<in> set (snd k) - {h}. \<not> Q (fst k) h1))
"

lemma fst_transform: "(\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j.\<forall>t \<in> set u. \<forall>l \<in> set (snd t). \<not>P (fst t) l \<or> (\<exists>bet \<in> set t_betaSet_1. (\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1)) \<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)))
\<and> (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u. \<exists>l \<in> set (snd t).\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1) 
\<and> (\<forall>i \<in> set t_TrigInstance_1. \<forall>v \<in> set i. \<forall>k \<in> set v. \<exists>h \<in> set (snd k).\<forall>h1 \<in> set (snd k) - {h}. \<not> Q (fst k) h1)
\<Longrightarrow> ((\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j.\<forall>t \<in> set u. \<forall>l \<in> set (snd t). \<not>P (fst t) l) 
\<and> (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u. \<exists>l \<in> set (snd t).\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t)  l1) 
\<and> (\<forall>i \<in> set t_TrigInstance_1. \<forall>v \<in> set i. \<forall>k \<in> set v. \<exists>h \<in> set (snd k).\<forall>h1 \<in> set (snd k) - {h}. \<not> Q (fst k) h1))
\<or>
((\<exists>bet \<in> set t_betaSet_1. (\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1)) \<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)) \<and> (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u. \<exists>l \<in> set (snd t).\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t)  l1) 
\<and> (\<forall>i \<in> set t_TrigInstance_1. \<forall>v \<in> set i. \<forall>k \<in> set v. \<exists>h \<in> set (snd k).\<forall>h1 \<in> set (snd k) - {h}. \<not> Q (fst k) h1))
"
  unfolding t_TrigInstance_1_def t_betaSet_1_def t_SyncInstance_1_def
  by blast

(*---- JavaBIP encoding - 2nd transform ----*)
(*[Q(el1, el1) \<and> \<not>Q(el1,h) \<and> \<not>P(t,l1) \<and> \<not>Q(k,h1)]*)
value "((\<exists>bet \<in> set t_betaSet_1. (\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1)) \<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)) \<and> (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u. \<exists>l \<in> set (snd t).\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t)  l1)
\<and> (\<forall>i \<in> set t_TrigInstance_1. \<forall>v \<in> set i. \<forall>k \<in> set v. \<exists>h \<in> set (snd k).\<forall>h1 \<in> set (snd k) - {h}. \<not> Q (fst k) h1))" 

value "((\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j.\<forall>t \<in> set u. \<forall>l \<in> set (snd t). \<not>P (fst t) l) 
\<and> (\<forall>i \<in> set t_TrigInstance_1. \<forall>v \<in> set i. \<forall>k \<in> set v. \<exists>h \<in> set (snd k).\<forall>h1 \<in> set (snd k) - {h}. \<not> Q (fst k) h1))
\<or> ((\<exists>bet \<in> set t_betaSet_1. (\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1)) 
\<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)) 
\<and> (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u. \<exists>l \<in> set (snd t).\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t)  l1))"

lemma snd_transform: "
((\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j.\<forall>t \<in> set u. \<forall>l \<in> set (snd t). \<not>P (fst t) l) 
\<and> (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u. \<exists>l \<in> set (snd t).\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t)  l1) 
\<and> (\<forall>i \<in> set t_TrigInstance_1. \<forall>v \<in> set i. \<forall>k \<in> set v. \<exists>h \<in> set (snd k).\<forall>h1 \<in> set (snd k) - {h}. \<not> Q (fst k) h1))
\<or>
((\<exists>bet \<in> set t_betaSet_1. (\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1)) \<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)) \<and> (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u. \<exists>l \<in> set (snd t).\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t)  l1) 
\<and> (\<forall>i \<in> set t_TrigInstance_1. \<forall>v \<in> set i. \<forall>k \<in> set v. \<exists>h \<in> set (snd k).\<forall>h1 \<in> set (snd k) - {h}. \<not> Q (fst k) h1))
\<Longrightarrow>
((\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j.\<forall>t \<in> set u. \<forall>l \<in> set (snd t). \<not>P (fst t) l) 
\<and> (\<forall>i \<in> set t_TrigInstance_1. \<forall>v \<in> set i. \<forall>k \<in> set v. \<exists>h \<in> set (snd k).\<forall>h1 \<in> set (snd k) - {h}. \<not> Q (fst k) h1))
\<or> ((\<exists>bet \<in> set t_betaSet_1. (\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1)) \<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)) \<and> (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u. \<exists>l \<in> set (snd t).\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t)  l1))"
  unfolding t_TrigInstance_1_def t_betaSet_1_def t_SyncInstance_1_def
  by blast

value "((\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j.\<forall>t \<in> set u. \<forall>l \<in> set (snd t). \<not>P (fst t) l) 
\<and> (\<forall>i \<in> set t_TrigInstance_1. \<forall>v \<in> set i. \<forall>k \<in> set v. \<exists>h \<in> set (snd k).\<forall>h1 \<in> set (snd k) - {h}. \<not> Q (fst k) h1))"

value "((\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j.\<forall>t \<in> set u. \<forall>l \<in> set (snd t). \<not>P (fst t) l) 
\<and> (\<forall>i \<in> set t_TrigInstance_1. \<forall>v \<in> set i. \<forall>k \<in> set v. \<exists>h \<in> set (snd k).\<forall>h1 \<in> set (snd k) - {h}. \<not> Q (fst k) h1))
\<or> ((\<exists>bet \<in> set t_betaSet_1. (\<forall>elm \<in> set bet.\<exists>el1 \<in> set elm. Q (fst el1) (snd el1)) \<and> (\<forall>elm \<in> set bet.\<forall>el1 \<in> set elm.\<forall>h \<in> set (lookup_3 (fst el1) t_TrigInstance_1) - {snd el1}. \<not>Q (fst el1) h)) \<and> (\<forall>j \<in> set t_SyncInstance_1. \<forall>u \<in> set j. \<forall>t \<in> set u. \<exists>l \<in> set (snd t).\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t)  l1))"
end