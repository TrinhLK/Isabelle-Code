theory nat_javabip
  imports Main "/Volumes/Setup/Isabelle/Isabelle-Code/2022/March/libs_nat_functions"
begin

value "Connector"
value "(
(\<forall>connector\<in>set Connector.\<forall>sync_list\<in>set (fst connector).\<forall>sync\<in>set sync_list. (P ((fst sync), (snd sync)) \<longrightarrow> 
      ((\<exists>trig_list\<in>set(snd connector).\<exists>trig\<in>set trig_list. \<forall>t_elm\<in>set trig. (Q ((fst t_elm), (snd t_elm))
      \<and> (\<forall>h \<in> set (lookup_3 (fst t_elm) test_triggers) - {snd t_elm}. \<not>Q ((fst t_elm), h)) ))
      \<and> (\<forall>sync_1\<in>set(fst connector)-{sync_list}.\<exists>s_elm_1\<in>set(sync_1). P ((fst s_elm_1), (snd s_elm_1))
      \<and> (\<forall>l \<in> set (lookup_3 (fst s_elm_1) test_synchron) - {snd s_elm_1}. \<not>P ((fst s_elm_1), l)))
    )
))\<and> (\<forall>j \<in> set test_synchron. \<forall>u \<in> set j. \<forall>t \<in> set u. \<forall>l \<in> set (snd t).(P ((fst t), l) \<longrightarrow> (\<forall>l1 \<in> set (snd t) - {l}. \<not>P ((fst t), l1))))
\<and> (\<forall>i \<in> set test_triggers. \<forall>v \<in> set i. \<forall>k \<in> set v. \<forall>h \<in> set (snd k).(Q ((fst k), h) \<longrightarrow> (\<forall>h1 \<in> set (snd k) - {h}. \<not>Q ((fst k), h1))))
)"

(*JvB*)
value "(
(\<forall>connector\<in>set Connector.\<forall>sync_list\<in>set (fst connector).\<forall>sync\<in>set sync_list. (P (fst sync) (snd sync) \<longrightarrow> 
      ((\<exists>trig_list\<in>set(snd connector).\<exists>trig\<in>set trig_list. \<forall>t_elm\<in>set trig. (Q (fst t_elm) (snd t_elm)
      \<and> (\<forall>h \<in> set (lookup_3 (fst t_elm) test_triggers) - {snd t_elm}. \<not>Q (fst t_elm) h) ))
      \<and> (\<forall>sync_1\<in>set(fst connector)-{sync_list}.\<exists>s_elm_1\<in>set(sync_1). P (fst s_elm_1) (snd s_elm_1)
      \<and> (\<forall>l \<in> set (lookup_3 (fst s_elm_1) test_synchron) - {snd s_elm_1}. \<not>P (fst s_elm_1) l))
    )
))\<and> (\<forall>j \<in> set test_synchron. \<forall>u \<in> set j. \<forall>t \<in> set u. \<forall>l \<in> set (snd t).(P (fst t) l \<longrightarrow> (\<forall>l1 \<in> set (snd t) - {l}. \<not>P (fst t) l1)))
\<and> (\<forall>i \<in> set test_triggers. \<forall>v \<in> set i. \<forall>k \<in> set v. \<forall>h \<in> set (snd k).(Q (fst k) h \<longrightarrow> (\<forall>h1 \<in> set (snd k) - {h}. \<not>Q (fst k) h1)))
)"

(*jvb rutgon*)
value "(
(\<forall>connector\<in>set Connector.\<forall>sync_list\<in>set (fst connector).\<forall>sync\<in>set sync_list. (P (fst sync) (snd sync) \<longrightarrow> 
      ((\<exists>trig_list\<in>set(snd connector).\<exists>trig\<in>set trig_list. \<forall>t_elm\<in>set trig. (Q (fst t_elm) (snd t_elm)
      ))
      \<and> (\<forall>sync_1\<in>set(fst connector)-{sync_list}.\<exists>s_elm_1\<in>set(sync_1). P (fst s_elm_1) (snd s_elm_1))
    )
))\<and> (\<forall>j \<in> set test_synchron. \<forall>u \<in> set j. \<forall>t \<in> set u. \<forall>l \<in> set (snd t).(P (fst t) l \<longrightarrow> (\<forall>l1 \<in> set (snd t) - {l}. \<not>P (fst t) l1)))
\<and> (\<forall>i \<in> set test_triggers. \<forall>v \<in> set i. \<forall>k \<in> set v. \<forall>h \<in> set (snd k).(Q (fst k) h \<longrightarrow> (\<forall>h1 \<in> set (snd k) - {h}. \<not>Q (fst k) h1)))
)"

lemma compare_rg: "(
(\<forall>connector\<in>set Connector.\<forall>sync_list\<in>set (fst connector).\<forall>sync\<in>set sync_list. (P (fst sync) (snd sync) \<longrightarrow> 
      ((\<exists>trig_list\<in>set(snd connector).\<exists>trig\<in>set trig_list. \<forall>t_elm\<in>set trig. (Q (fst t_elm) (snd t_elm)
      \<and> (\<forall>h \<in> set (lookup_3 (fst t_elm) test_triggers) - {snd t_elm}. \<not>Q (fst t_elm) h) ))
      \<and> (\<forall>sync_1\<in>set(fst connector)-{sync_list}.\<exists>s_elm_1\<in>set(sync_1). P (fst s_elm_1) (snd s_elm_1)
      \<and> (\<forall>l \<in> set (lookup_3 (fst s_elm_1) test_synchron) - {snd s_elm_1}. \<not>P (fst s_elm_1) l))
    )
))\<and> (\<forall>j \<in> set test_synchron. \<forall>u \<in> set j. \<forall>t \<in> set u. \<forall>l \<in> set (snd t).(P (fst t) l \<longrightarrow> (\<forall>l1 \<in> set (snd t) - {l}. \<not>P (fst t) l1)))
\<and> (\<forall>i \<in> set test_triggers. \<forall>v \<in> set i. \<forall>k \<in> set v. \<forall>h \<in> set (snd k).(Q (fst k) h \<longrightarrow> (\<forall>h1 \<in> set (snd k) - {h}. \<not>Q (fst k) h1)))
) \<longleftrightarrow>
\<not>(
(\<forall>connector\<in>set Connector.\<forall>sync_list\<in>set (fst connector).\<forall>sync\<in>set sync_list. (P (fst sync) (snd sync) \<longrightarrow> 
      ((\<exists>trig_list\<in>set(snd connector).\<exists>trig\<in>set trig_list. \<forall>t_elm\<in>set trig. (Q (fst t_elm) (snd t_elm)
      ))
      \<and> (\<forall>sync_1\<in>set(fst connector)-{sync_list}.\<exists>s_elm_1\<in>set(sync_1). P (fst s_elm_1) (snd s_elm_1))
    )
))\<and> (\<forall>j \<in> set test_synchron. \<forall>u \<in> set j. \<forall>t \<in> set u. \<forall>l \<in> set (snd t).(P (fst t) l \<longrightarrow> (\<forall>l1 \<in> set (snd t) - {l}. \<not>P (fst t) l1)))
\<and> (\<forall>i \<in> set test_triggers. \<forall>v \<in> set i. \<forall>k \<in> set v. \<forall>h \<in> set (snd k).(Q (fst k) h \<longrightarrow> (\<forall>h1 \<in> set (snd k) - {h}. \<not>Q (fst k) h1)))
)
"
  nitpick [timeout=120, card = 5]
(*
lemma compare_var: "((((P 51 1 \<longrightarrow>
    (((Q 11 1 \<and> \<not> Q 11 2) \<and> Q 12 1 \<or> Q 2 1 \<and> \<not> Q 2 2) \<or>
     ((Q 11 1 \<and> \<not> Q 11 2) \<and> Q 12 1 \<or> Q 2 2 \<and> \<not> Q 2 1) \<or>
     ((Q 11 2 \<and> \<not> Q 11 1) \<and> Q 12 1 \<or> Q 2 1 \<and> \<not> Q 2 2) \<or> (Q 11 2 \<and> \<not> Q 11 1) \<and> Q 12 1 \<or> Q 2 2 \<and> \<not> Q 2 1) \<and>
    (P 52 1 \<and> \<not> P 52 2 \<or> P 52 2 \<and> \<not> P 52 1)) \<and>
   (P 51 2 \<longrightarrow>
    (((Q 11 1 \<and> \<not> Q 11 2) \<and> Q 12 1 \<or> Q 2 1 \<and> \<not> Q 2 2) \<or>
     ((Q 11 1 \<and> \<not> Q 11 2) \<and> Q 12 1 \<or> Q 2 2 \<and> \<not> Q 2 1) \<or>
     ((Q 11 2 \<and> \<not> Q 11 1) \<and> Q 12 1 \<or> Q 2 1 \<and> \<not> Q 2 2) \<or> (Q 11 2 \<and> \<not> Q 11 1) \<and> Q 12 1 \<or> Q 2 2 \<and> \<not> Q 2 1) \<and>
    (P 52 1 \<and> \<not> P 52 2 \<or> P 52 2 \<and> \<not> P 52 1))) \<and>
  (P 52 1 \<longrightarrow>
   (((Q 11 1 \<and> \<not> Q 11 2) \<and> Q 12 1 \<or> Q 2 1 \<and> \<not> Q 2 2) \<or>
    ((Q 11 1 \<and> \<not> Q 11 2) \<and> Q 12 1 \<or> Q 2 2 \<and> \<not> Q 2 1) \<or>
    ((Q 11 2 \<and> \<not> Q 11 1) \<and> Q 12 1 \<or> Q 2 1 \<and> \<not> Q 2 2) \<or> (Q 11 2 \<and> \<not> Q 11 1) \<and> Q 12 1 \<or> Q 2 2 \<and> \<not> Q 2 1) \<and>
   (P 51 1 \<and> \<not> P 51 2 \<or> P 51 2 \<and> \<not> P 51 1)) \<and>
  (P 52 2 \<longrightarrow>
   (((Q 11 1 \<and> \<not> Q 11 2) \<and> Q 12 1 \<or> Q 2 1 \<and> \<not> Q 2 2) \<or>
    ((Q 11 1 \<and> \<not> Q 11 2) \<and> Q 12 1 \<or> Q 2 2 \<and> \<not> Q 2 1) \<or>
    ((Q 11 2 \<and> \<not> Q 11 1) \<and> Q 12 1 \<or> Q 2 1 \<and> \<not> Q 2 2) \<or> (Q 11 2 \<and> \<not> Q 11 1) \<and> Q 12 1 \<or> Q 2 2 \<and> \<not> Q 2 1) \<and>
   (P 51 1 \<and> \<not> P 51 2 \<or> P 51 2 \<and> \<not> P 51 1))) \<and>
 (((P 51 1 \<longrightarrow> \<not> P 51 2) \<and> (P 51 2 \<longrightarrow> \<not> P 51 1)) \<and> (P 52 1 \<longrightarrow> \<not> P 52 2) \<and> (P 52 2 \<longrightarrow> \<not> P 52 1)) \<and>
 ((Q 11 1 \<longrightarrow> \<not> Q 11 2) \<and> (Q 11 2 \<longrightarrow> \<not> Q 11 1)) \<and> (Q 2 1 \<longrightarrow> \<not> Q 2 2) \<and> (Q 2 2 \<longrightarrow> \<not> Q 2 1))
\<longleftrightarrow>
((((P 51 1 \<longrightarrow>
    ((Q 11 1 \<and> Q 12 1 \<or> Q 2 1) \<or> (Q 11 1 \<and> Q 12 1 \<or> Q 2 2) \<or> (Q 11 2 \<and> Q 12 1 \<or> Q 2 1) \<or> Q 11 2 \<and> Q 12 1 \<or> Q 2 2) \<and>
    (P 52 1 \<or> P 52 2)) \<and>
   (P 51 2 \<longrightarrow>
    ((Q 11 1 \<and> Q 12 1 \<or> Q 2 1) \<or> (Q 11 1 \<and> Q 12 1 \<or> Q 2 2) \<or> (Q 11 2 \<and> Q 12 1 \<or> Q 2 1) \<or> Q 11 2 \<and> Q 12 1 \<or> Q 2 2) \<and>
    (P 52 1 \<or> P 52 2))) \<and>
  (P 52 1 \<longrightarrow>
   ((Q 11 1 \<and> Q 12 1 \<or> Q 2 1) \<or> (Q 11 1 \<and> Q 12 1 \<or> Q 2 2) \<or> (Q 11 2 \<and> Q 12 1 \<or> Q 2 1) \<or> Q 11 2 \<and> Q 12 1 \<or> Q 2 2) \<and>
   (P 51 1 \<or> P 51 2)) \<and>
  (P 52 2 \<longrightarrow>
   ((Q 11 1 \<and> Q 12 1 \<or> Q 2 1) \<or> (Q 11 1 \<and> Q 12 1 \<or> Q 2 2) \<or> (Q 11 2 \<and> Q 12 1 \<or> Q 2 1) \<or> Q 11 2 \<and> Q 12 1 \<or> Q 2 2) \<and>
   (P 51 1 \<or> P 51 2))) \<and>
 (((P 51 1 \<longrightarrow> \<not> P 51 2) \<and> (P 51 2 \<longrightarrow> \<not> P 51 1)) \<and> (P 52 1 \<longrightarrow> \<not> P 52 2) \<and> (P 52 2 \<longrightarrow> \<not> P 52 1)) \<and>
 ((Q 11 1 \<longrightarrow> \<not> Q 11 2) \<and> (Q 11 2 \<longrightarrow> \<not> Q 11 1)) \<and> (Q 2 1 \<longrightarrow> \<not> Q 2 2) \<and> (Q 2 2 \<longrightarrow> \<not> Q 2 1))"
  by cannot *)

lemma compare_var_1: "(((P 41 1 \<longrightarrow> (Q 11 1 \<and> \<not> Q 11 2) \<and> Q 12 1 \<and> Q 13 1 \<or> (Q 11 2 \<and> \<not> Q 11 1) \<and> Q 12 1 \<and> Q 13 1) \<and>
  (P 51 1 \<longrightarrow> (Q 11 1 \<and> \<not> Q 11 2) \<and> Q 12 1 \<and> Q 13 1 \<or> (Q 11 2 \<and> \<not> Q 11 1) \<and> Q 12 1 \<and> Q 13 1)) \<and>
 (Q 11 1 \<longrightarrow> \<not> Q 11 2) \<and> (Q 11 2 \<longrightarrow> \<not> Q 11 1))
\<longleftrightarrow>
(((P 41 1 \<longrightarrow> Q 11 1 \<and> Q 12 1 \<and> Q 13 1 \<or> Q 11 2 \<and> Q 12 1 \<and> Q 13 1) \<and>
  (P 51 1 \<longrightarrow> Q 11 1 \<and> Q 12 1 \<and> Q 13 1 \<or> Q 11 2 \<and> Q 12 1 \<and> Q 13 1)) \<and>
 (Q 11 1 \<longrightarrow> \<not> Q 11 2) \<and> (Q 11 2 \<longrightarrow> \<not> Q 11 1))"
  by blast

lemma compare_var_2: "(((P411 \<longrightarrow> (Q111 \<and> \<not> Q112) \<and> Q121 \<and> Q131 \<or> (Q112 \<and> \<not> Q111) \<and> Q121 \<and> Q131) \<and>
  (P511 \<longrightarrow> (Q111 \<and> \<not> Q112) \<and> Q121 \<and> Q131 \<or> (Q112 \<and> \<not> Q111) \<and> Q121 \<and> Q131)) \<and>
 (Q111 \<longrightarrow> \<not> Q112) \<and> (Q112 \<longrightarrow> \<not> Q111))
\<longleftrightarrow>
(((P411 \<longrightarrow> Q111 \<and> Q121 \<and> Q131 \<or> Q112 \<and> Q121 \<and> Q131) \<and>
  (P511 \<longrightarrow> Q111 \<and> Q121 \<and> Q131 \<or> Q112 \<and> Q121 \<and> Q131)) \<and>
 (Q111 \<longrightarrow> \<not> Q112) \<and> (Q112 \<longrightarrow> \<not> Q111))"
  by blast

end