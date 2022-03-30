theory compare_test
  imports Main "/Volumes/Setup/Isabelle/Isabelle-Code/2022/libs_functions"
begin

declare [[ smt_timeout = 20 ]]

lemma inst_2:"(((((P (4::nat, 1) \<longrightarrow> Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 1)) \<or>
    (P (4, 1) \<longrightarrow> Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 2)) \<or>
    (P (4, 1) \<longrightarrow> Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 3)) \<or>
    (P (4, 1) \<longrightarrow> Q (11, 2) \<and> Q (12, 1) \<or> Q (2, 1)) \<or>
    (P (4, 1) \<longrightarrow> Q (11, 2) \<and> Q (12, 1) \<or> Q (2, 2)) \<or> (P (4, 1) \<longrightarrow> Q (11, 2) \<and> Q (12, 1) \<or> Q (2, 3))) \<and>
   ((P (4, 2) \<longrightarrow> Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 1)) \<or>
    (P (4, 2) \<longrightarrow> Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 2)) \<or>
    (P (4, 2) \<longrightarrow> Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 3)) \<or>
    (P (4, 2) \<longrightarrow> Q (11, 2) \<and> Q (12, 1) \<or> Q (2, 1)) \<or>
    (P (4, 2) \<longrightarrow> Q (11, 2) \<and> Q (12, 1) \<or> Q (2, 2)) \<or> (P (4, 2) \<longrightarrow> Q (11, 2) \<and> Q (12, 1) \<or> Q (2, 3)))) \<and>
  (((P (51, 1) \<longrightarrow> (Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 1)) \<and> (P (52, 1) \<or> P (52, 2) \<or> P (52, 3))) \<or>
    (P (51, 1) \<longrightarrow> (Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 2)) \<and> (P (52, 1) \<or> P (52, 2) \<or> P (52, 3))) \<or>
    (P (51, 1) \<longrightarrow> (Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 3)) \<and> (P (52, 1) \<or> P (52, 2) \<or> P (52, 3))) \<or>
    (P (51, 1) \<longrightarrow> (Q (11, 2) \<and> Q (12, 1) \<or> Q (2, 1)) \<and> (P (52, 1) \<or> P (52, 2) \<or> P (52, 3))) \<or>
    (P (51, 1) \<longrightarrow> (Q (11, 2) \<and> Q (12, 1) \<or> Q (2, 2)) \<and> (P (52, 1) \<or> P (52, 2) \<or> P (52, 3))) \<or>
    (P (51, 1) \<longrightarrow> (Q (11, 2) \<and> Q (12, 1) \<or> Q (2, 3)) \<and> (P (52, 1) \<or> P (52, 2) \<or> P (52, 3)))) \<and>
   ((P (51, 2) \<longrightarrow> (Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 1)) \<and> (P (52, 1) \<or> P (52, 2) \<or> P (52, 3))) \<or>
    (P (51, 2) \<longrightarrow> (Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 2)) \<and> (P (52, 1) \<or> P (52, 2) \<or> P (52, 3))) \<or>
    (P (51, 2) \<longrightarrow> (Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 3)) \<and> (P (52, 1) \<or> P (52, 2) \<or> P (52, 3))) \<or>
    (P (51, 2) \<longrightarrow> (Q (11, 2) \<and> Q (12, 1) \<or> Q (2, 1)) \<and> (P (52, 1) \<or> P (52, 2) \<or> P (52, 3))) \<or>
    (P (51, 2) \<longrightarrow> (Q (11, 2) \<and> Q (12, 1) \<or> Q (2, 2)) \<and> (P (52, 1) \<or> P (52, 2) \<or> P (52, 3))) \<or>
    (P (51, 2) \<longrightarrow> (Q (11, 2) \<and> Q (12, 1) \<or> Q (2, 3)) \<and> (P (52, 1) \<or> P (52, 2) \<or> P (52, 3))))) \<and>
  ((P (52, 1) \<longrightarrow> (Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 1)) \<and> (P (51, 1) \<or> P (51, 2))) \<or>
   (P (52, 1) \<longrightarrow> (Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 2)) \<and> (P (51, 1) \<or> P (51, 2))) \<or>
   (P (52, 1) \<longrightarrow> (Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 3)) \<and> (P (51, 1) \<or> P (51, 2))) \<or>
   (P (52, 1) \<longrightarrow> (Q (11, 2) \<and> Q (12, 1) \<or> Q (2, 1)) \<and> (P (51, 1) \<or> P (51, 2))) \<or>
   (P (52, 1) \<longrightarrow> (Q (11, 2) \<and> Q (12, 1) \<or> Q (2, 2)) \<and> (P (51, 1) \<or> P (51, 2))) \<or>
   (P (52, 1) \<longrightarrow> (Q (11, 2) \<and> Q (12, 1) \<or> Q (2, 3)) \<and> (P (51, 1) \<or> P (51, 2)))) \<and>
  ((P (52, 2) \<longrightarrow> (Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 1)) \<and> (P (51, 1) \<or> P (51, 2))) \<or>
   (P (52, 2) \<longrightarrow> (Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 2)) \<and> (P (51, 1) \<or> P (51, 2))) \<or>
   (P (52, 2) \<longrightarrow> (Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 3)) \<and> (P (51, 1) \<or> P (51, 2))) \<or>
   (P (52, 2) \<longrightarrow> (Q (11, 2) \<and> Q (12, 1) \<or> Q (2, 1)) \<and> (P (51, 1) \<or> P (51, 2))) \<or>
   (P (52, 2) \<longrightarrow> (Q (11, 2) \<and> Q (12, 1) \<or> Q (2, 2)) \<and> (P (51, 1) \<or> P (51, 2))) \<or>
   (P (52, 2) \<longrightarrow> (Q (11, 2) \<and> Q (12, 1) \<or> Q (2, 3)) \<and> (P (51, 1) \<or> P (51, 2)))) \<and>
  ((P (52, 3) \<longrightarrow> (Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 1)) \<and> (P (51, 1) \<or> P (51, 2))) \<or>
   (P (52, 3) \<longrightarrow> (Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 2)) \<and> (P (51, 1) \<or> P (51, 2))) \<or>
   (P (52, 3) \<longrightarrow> (Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 3)) \<and> (P (51, 1) \<or> P (51, 2))) \<or>
   (P (52, 3) \<longrightarrow> (Q (11, 2) \<and> Q (12, 1) \<or> Q (2, 1)) \<and> (P (51, 1) \<or> P (51, 2))) \<or>
   (P (52, 3) \<longrightarrow> (Q (11, 2) \<and> Q (12, 1) \<or> Q (2, 2)) \<and> (P (51, 1) \<or> P (51, 2))) \<or>
   (P (52, 3) \<longrightarrow> (Q (11, 2) \<and> Q (12, 1) \<or> Q (2, 3)) \<and> (P (51, 1) \<or> P (51, 2))))) \<and>
 (((P (4, 1) \<longrightarrow> \<not> P (4, 2)) \<and> (P (4, 2) \<longrightarrow> \<not> P (4, 1))) \<and>
  ((P (51, 1) \<longrightarrow> \<not> P (51, 2)) \<and> (P (51, 2) \<longrightarrow> \<not> P (51, 1))) \<and>
  (P (52, 1) \<longrightarrow> \<not> P (52, 2) \<and> \<not> P (52, 3)) \<and>
  (P (52, 2) \<longrightarrow> \<not> P (52, 1) \<and> \<not> P (52, 3)) \<and> (P (52, 3) \<longrightarrow> \<not> P (52, 1) \<and> \<not> P (52, 2))) \<and>
 ((Q (11, 1) \<longrightarrow> \<not> Q (11, 2)) \<and> (Q (11, 2) \<longrightarrow> \<not> Q (11, 1))) \<and>
 (Q (2, 1) \<longrightarrow> \<not> Q (2, 2) \<and> \<not> Q (2, 3)) \<and>
 (Q (2, 2) \<longrightarrow> \<not> Q (2, 1) \<and> \<not> Q (2, 3)) \<and> (Q (2, 3) \<longrightarrow> \<not> Q (2, 1) \<and> \<not> Q (2, 2)))
\<Longrightarrow> (
(((P (4::nat, 1) \<longrightarrow>
    ((Q (11, 1) \<and> \<not> Q (11, 2)) \<and> Q (12, 1) \<or> Q (2, 1) \<and> \<not> Q (2, 2) \<and> \<not> Q (2, 3)) \<or>
    ((Q (11, 1) \<and> \<not> Q (11, 2)) \<and> Q (12, 1) \<or> Q (2, 2) \<and> \<not> Q (2, 1) \<and> \<not> Q (2, 3)) \<or>
    ((Q (11, 1) \<and> \<not> Q (11, 2)) \<and> Q (12, 1) \<or> Q (2, 3) \<and> \<not> Q (2, 1) \<and> \<not> Q (2, 2)) \<or>
    ((Q (11, 2) \<and> \<not> Q (11, 1)) \<and> Q (12, 1) \<or> Q (2, 1) \<and> \<not> Q (2, 2) \<and> \<not> Q (2, 3)) \<or>
    ((Q (11, 2) \<and> \<not> Q (11, 1)) \<and> Q (12, 1) \<or> Q (2, 2) \<and> \<not> Q (2, 1) \<and> \<not> Q (2, 3)) \<or>
    (Q (11, 2) \<and> \<not> Q (11, 1)) \<and> Q (12, 1) \<or> Q (2, 3) \<and> \<not> Q (2, 1) \<and> \<not> Q (2, 2)) \<and>
   (P (4, 2) \<longrightarrow>
    ((Q (11, 1) \<and> \<not> Q (11, 2)) \<and> Q (12, 1) \<or> Q (2, 1) \<and> \<not> Q (2, 2) \<and> \<not> Q (2, 3)) \<or>
    ((Q (11, 1) \<and> \<not> Q (11, 2)) \<and> Q (12, 1) \<or> Q (2, 2) \<and> \<not> Q (2, 1) \<and> \<not> Q (2, 3)) \<or>
    ((Q (11, 1) \<and> \<not> Q (11, 2)) \<and> Q (12, 1) \<or> Q (2, 3) \<and> \<not> Q (2, 1) \<and> \<not> Q (2, 2)) \<or>
    ((Q (11, 2) \<and> \<not> Q (11, 1)) \<and> Q (12, 1) \<or> Q (2, 1) \<and> \<not> Q (2, 2) \<and> \<not> Q (2, 3)) \<or>
    ((Q (11, 2) \<and> \<not> Q (11, 1)) \<and> Q (12, 1) \<or> Q (2, 2) \<and> \<not> Q (2, 1) \<and> \<not> Q (2, 3)) \<or>
    (Q (11, 2) \<and> \<not> Q (11, 1)) \<and> Q (12, 1) \<or> Q (2, 3) \<and> \<not> Q (2, 1) \<and> \<not> Q (2, 2))) \<and>
  ((P (51, 1) \<longrightarrow>
    (((Q (11, 1) \<and> \<not> Q (11, 2)) \<and> Q (12, 1) \<or> Q (2, 1) \<and> \<not> Q (2, 2) \<and> \<not> Q (2, 3)) \<or>
     ((Q (11, 1) \<and> \<not> Q (11, 2)) \<and> Q (12, 1) \<or> Q (2, 2) \<and> \<not> Q (2, 1) \<and> \<not> Q (2, 3)) \<or>
     ((Q (11, 1) \<and> \<not> Q (11, 2)) \<and> Q (12, 1) \<or> Q (2, 3) \<and> \<not> Q (2, 1) \<and> \<not> Q (2, 2)) \<or>
     ((Q (11, 2) \<and> \<not> Q (11, 1)) \<and> Q (12, 1) \<or> Q (2, 1) \<and> \<not> Q (2, 2) \<and> \<not> Q (2, 3)) \<or>
     ((Q (11, 2) \<and> \<not> Q (11, 1)) \<and> Q (12, 1) \<or> Q (2, 2) \<and> \<not> Q (2, 1) \<and> \<not> Q (2, 3)) \<or>
     (Q (11, 2) \<and> \<not> Q (11, 1)) \<and> Q (12, 1) \<or> Q (2, 3) \<and> \<not> Q (2, 1) \<and> \<not> Q (2, 2)) \<and>
    (P (52, 1) \<and> \<not> P (52, 2) \<and> \<not> P (52, 3) \<or>
     P (52, 2) \<and> \<not> P (52, 1) \<and> \<not> P (52, 3) \<or> P (52, 3) \<and> \<not> P (52, 1) \<and> \<not> P (52, 2))) \<and>
   (P (51, 2) \<longrightarrow>
    (((Q (11, 1) \<and> \<not> Q (11, 2)) \<and> Q (12, 1) \<or> Q (2, 1) \<and> \<not> Q (2, 2) \<and> \<not> Q (2, 3)) \<or>
     ((Q (11, 1) \<and> \<not> Q (11, 2)) \<and> Q (12, 1) \<or> Q (2, 2) \<and> \<not> Q (2, 1) \<and> \<not> Q (2, 3)) \<or>
     ((Q (11, 1) \<and> \<not> Q (11, 2)) \<and> Q (12, 1) \<or> Q (2, 3) \<and> \<not> Q (2, 1) \<and> \<not> Q (2, 2)) \<or>
     ((Q (11, 2) \<and> \<not> Q (11, 1)) \<and> Q (12, 1) \<or> Q (2, 1) \<and> \<not> Q (2, 2) \<and> \<not> Q (2, 3)) \<or>
     ((Q (11, 2) \<and> \<not> Q (11, 1)) \<and> Q (12, 1) \<or> Q (2, 2) \<and> \<not> Q (2, 1) \<and> \<not> Q (2, 3)) \<or>
     (Q (11, 2) \<and> \<not> Q (11, 1)) \<and> Q (12, 1) \<or> Q (2, 3) \<and> \<not> Q (2, 1) \<and> \<not> Q (2, 2)) \<and>
    (P (52, 1) \<and> \<not> P (52, 2) \<and> \<not> P (52, 3) \<or>
     P (52, 2) \<and> \<not> P (52, 1) \<and> \<not> P (52, 3) \<or> P (52, 3) \<and> \<not> P (52, 1) \<and> \<not> P (52, 2)))) \<and>
  (P (52, 1) \<longrightarrow>
   (((Q (11, 1) \<and> \<not> Q (11, 2)) \<and> Q (12, 1) \<or> Q (2, 1) \<and> \<not> Q (2, 2) \<and> \<not> Q (2, 3)) \<or>
    ((Q (11, 1) \<and> \<not> Q (11, 2)) \<and> Q (12, 1) \<or> Q (2, 2) \<and> \<not> Q (2, 1) \<and> \<not> Q (2, 3)) \<or>
    ((Q (11, 1) \<and> \<not> Q (11, 2)) \<and> Q (12, 1) \<or> Q (2, 3) \<and> \<not> Q (2, 1) \<and> \<not> Q (2, 2)) \<or>
    ((Q (11, 2) \<and> \<not> Q (11, 1)) \<and> Q (12, 1) \<or> Q (2, 1) \<and> \<not> Q (2, 2) \<and> \<not> Q (2, 3)) \<or>
    ((Q (11, 2) \<and> \<not> Q (11, 1)) \<and> Q (12, 1) \<or> Q (2, 2) \<and> \<not> Q (2, 1) \<and> \<not> Q (2, 3)) \<or>
    (Q (11, 2) \<and> \<not> Q (11, 1)) \<and> Q (12, 1) \<or> Q (2, 3) \<and> \<not> Q (2, 1) \<and> \<not> Q (2, 2)) \<and>
   (P (51, 1) \<and> \<not> P (51, 2) \<or> P (51, 2) \<and> \<not> P (51, 1))) \<and>
  (P (52, 2) \<longrightarrow>
   (((Q (11, 1) \<and> \<not> Q (11, 2)) \<and> Q (12, 1) \<or> Q (2, 1) \<and> \<not> Q (2, 2) \<and> \<not> Q (2, 3)) \<or>
    ((Q (11, 1) \<and> \<not> Q (11, 2)) \<and> Q (12, 1) \<or> Q (2, 2) \<and> \<not> Q (2, 1) \<and> \<not> Q (2, 3)) \<or>
    ((Q (11, 1) \<and> \<not> Q (11, 2)) \<and> Q (12, 1) \<or> Q (2, 3) \<and> \<not> Q (2, 1) \<and> \<not> Q (2, 2)) \<or>
    ((Q (11, 2) \<and> \<not> Q (11, 1)) \<and> Q (12, 1) \<or> Q (2, 1) \<and> \<not> Q (2, 2) \<and> \<not> Q (2, 3)) \<or>
    ((Q (11, 2) \<and> \<not> Q (11, 1)) \<and> Q (12, 1) \<or> Q (2, 2) \<and> \<not> Q (2, 1) \<and> \<not> Q (2, 3)) \<or>
    (Q (11, 2) \<and> \<not> Q (11, 1)) \<and> Q (12, 1) \<or> Q (2, 3) \<and> \<not> Q (2, 1) \<and> \<not> Q (2, 2)) \<and>
   (P (51, 1) \<and> \<not> P (51, 2) \<or> P (51, 2) \<and> \<not> P (51, 1))) \<and>
  (P (52, 3) \<longrightarrow>
   (((Q (11, 1) \<and> \<not> Q (11, 2)) \<and> Q (12, 1) \<or> Q (2, 1) \<and> \<not> Q (2, 2) \<and> \<not> Q (2, 3)) \<or>
    ((Q (11, 1) \<and> \<not> Q (11, 2)) \<and> Q (12, 1) \<or> Q (2, 2) \<and> \<not> Q (2, 1) \<and> \<not> Q (2, 3)) \<or>
    ((Q (11, 1) \<and> \<not> Q (11, 2)) \<and> Q (12, 1) \<or> Q (2, 3) \<and> \<not> Q (2, 1) \<and> \<not> Q (2, 2)) \<or>
    ((Q (11, 2) \<and> \<not> Q (11, 1)) \<and> Q (12, 1) \<or> Q (2, 1) \<and> \<not> Q (2, 2) \<and> \<not> Q (2, 3)) \<or>
    ((Q (11, 2) \<and> \<not> Q (11, 1)) \<and> Q (12, 1) \<or> Q (2, 2) \<and> \<not> Q (2, 1) \<and> \<not> Q (2, 3)) \<or>
    (Q (11, 2) \<and> \<not> Q (11, 1)) \<and> Q (12, 1) \<or> Q (2, 3) \<and> \<not> Q (2, 1) \<and> \<not> Q (2, 2)) \<and>
   (P (51, 1) \<and> \<not> P (51, 2) \<or> P (51, 2) \<and> \<not> P (51, 1)))) \<and>
 (((P (4, 1) \<longrightarrow> \<not> P (4, 2)) \<and> (P (4, 2) \<longrightarrow> \<not> P (4, 1))) \<and>
  ((P (51, 1) \<longrightarrow> \<not> P (51, 2)) \<and> (P (51, 2) \<longrightarrow> \<not> P (51, 1))) \<and>
  (P (52, 1) \<longrightarrow> \<not> P (52, 2) \<and> \<not> P (52, 3)) \<and>
  (P (52, 2) \<longrightarrow> \<not> P (52, 1) \<and> \<not> P (52, 3)) \<and> (P (52, 3) \<longrightarrow> \<not> P (52, 1) \<and> \<not> P (52, 2))) \<and>
 ((Q (11, 1) \<longrightarrow> \<not> Q (11, 2)) \<and> (Q (11, 2) \<longrightarrow> \<not> Q (11, 1))) \<and>
 (Q (2, 1) \<longrightarrow> \<not> Q (2, 2) \<and> \<not> Q (2, 3)) \<and>
 (Q (2, 2) \<longrightarrow> \<not> Q (2, 1) \<and> \<not> Q (2, 3)) \<and> (Q (2, 3) \<longrightarrow> \<not> Q (2, 1) \<and> \<not> Q (2, 2))
)"
  by argo

lemma compare_1: "((\<forall>connector\<in>set Connector.\<forall>sync_list\<in>set (fst connector).\<exists>sync\<in>set sync_list. \<exists>trig_list\<in>set(snd connector).(P ((fst sync),(snd sync)) \<longrightarrow> 
      (( \<exists>trig\<in>set trig_list.\<forall>t_elm\<in>set trig. (Q ((fst t_elm), (snd t_elm))
       ))                          
      \<and> (\<forall>sync_1\<in>set(fst connector)-{sync_list}.\<exists>s_elm_1\<in>set(sync_1). P ((fst s_elm_1),(snd s_elm_1))
      )
    )
))\<and> (\<forall>j \<in> set test_synchron. \<forall>u \<in> set j. \<forall>t \<in> set u. \<forall>l \<in> set (snd t).(P ((fst t), l) \<longrightarrow> (\<forall>l1 \<in> set (snd t) - {l}. \<not>P ((fst t), l1))))
\<and> (\<forall>i \<in> set test_triggers. \<forall>v \<in> set i. \<forall>k \<in> set v. \<forall>h \<in> set (snd k).(Q ((fst k), h) \<longrightarrow> (\<forall>h1 \<in> set (snd k) - {h}. \<not>Q ((fst k), h1)))))
\<Longrightarrow> (
(\<forall>connector\<in>set Connector.\<forall>sync_list\<in>set (fst connector).\<forall>sync\<in>set sync_list. (P ((fst sync), (snd sync)) \<longrightarrow> 
      ((\<exists>trig_list\<in>set(snd connector).\<exists>trig\<in>set trig_list. \<forall>t_elm\<in>set trig. (Q ((fst t_elm), (snd t_elm))
      \<and> (\<forall>h \<in> set (lookup_3 (fst t_elm) test_triggers) - {snd t_elm}. \<not>Q ((fst t_elm), h)) ))
      \<and> (\<forall>sync_1\<in>set(fst connector)-{sync_list}.\<exists>s_elm_1\<in>set(sync_1). P ((fst s_elm_1), (snd s_elm_1))
      \<and> (\<forall>l \<in> set (lookup_3 (fst s_elm_1) test_synchron) - {snd s_elm_1}. \<not>P ((fst s_elm_1), l)))
    )
))\<and> (\<forall>j \<in> set test_synchron. \<forall>u \<in> set j. \<forall>t \<in> set u. \<forall>l \<in> set (snd t).(P ((fst t), l) \<longrightarrow> (\<forall>l1 \<in> set (snd t) - {l}. \<not>P ((fst t), l1))))
\<and> (\<forall>i \<in> set test_triggers. \<forall>v \<in> set i. \<forall>k \<in> set v. \<forall>h \<in> set (snd k).(Q ((fst k), h) \<longrightarrow> (\<forall>h1 \<in> set (snd k) - {h}. \<not>Q ((fst k), h1))))
)"
  unfolding Connector_def test_triggers_def test_synchron_def
  nitpick  [timeout=120, card=1-6]
(*maximum 6*)

(*
lemma compare_2: "((\<forall>connector\<in>set Connector.\<forall>sync_list\<in>set (fst connector).\<forall>sync\<in>set sync_list. \<exists>trig_list\<in>set(snd connector).(P ((fst sync),(snd sync)) \<longrightarrow> 
      (( \<exists>trig\<in>set trig_list.\<forall>t_elm\<in>set trig.\<forall>sync_1\<in>set(fst connector)-{sync_list}.\<exists>s_elm_1\<in>set(sync_1). (Q ((fst t_elm), (snd t_elm))
      \<and> (P ((fst s_elm_1),(snd s_elm_1))))
      )
    )
))\<and> (\<forall>j \<in> set test_synchron. \<forall>u \<in> set j. \<forall>t \<in> set u. \<forall>l \<in> set (snd t).(P ((fst t), l) \<longrightarrow> (\<forall>l1 \<in> set (snd t) - {l}. \<not>P ((fst t), l1))))
\<and> (\<forall>i \<in> set test_triggers. \<forall>v \<in> set i. \<forall>k \<in> set v. \<forall>h \<in> set (snd k).(Q ((fst k), h) \<longrightarrow> (\<forall>h1 \<in> set (snd k) - {h}. \<not>Q ((fst k), h1)))))
\<Longrightarrow> (
(\<forall>connector\<in>set Connector.\<forall>sync_list\<in>set (fst connector).\<forall>sync\<in>set sync_list. (P ((fst sync), (snd sync)) \<longrightarrow> 
      ((\<exists>trig_list\<in>set(snd connector).\<exists>trig\<in>set trig_list. \<forall>t_elm\<in>set trig. (Q ((fst t_elm), (snd t_elm))
      \<and> (\<forall>h \<in> set (lookup_3 (fst t_elm) test_triggers) - {snd t_elm}. \<not>Q ((fst t_elm), h)) ))
      \<and> (\<forall>sync_1\<in>set(fst connector)-{sync_list}.\<exists>s_elm_1\<in>set(sync_1). P ((fst s_elm_1), (snd s_elm_1))
      \<and> (\<forall>l \<in> set (lookup_3 (fst s_elm_1) test_synchron) - {snd s_elm_1}. \<not>P ((fst s_elm_1), l)))
    )
))\<and> (\<forall>j \<in> set test_synchron. \<forall>u \<in> set j. \<forall>t \<in> set u. \<forall>l \<in> set (snd t).(P ((fst t), l) \<longrightarrow> (\<forall>l1 \<in> set (snd t) - {l}. \<not>P ((fst t), l1))))
\<and> (\<forall>i \<in> set test_triggers. \<forall>v \<in> set i. \<forall>k \<in> set v. \<forall>h \<in> set (snd k).(Q ((fst k), h) \<longrightarrow> (\<forall>h1 \<in> set (snd k) - {h}. \<not>Q ((fst k), h1))))
)"
  unfolding Connector_def test_triggers_def test_synchron_def
  nitpick  [timeout=120, card=1-5]

*)
(*
lemma "x=x1 \<and> y=y1 \<Longrightarrow> speak(x, y) \<longleftrightarrow> speak (x1, y1)"
  by simp

lemma "p = p2 \<Longrightarrow>
((speak(p) \<longrightarrow> isReg(p, t) \<and> broadcast(t) \<and> (p \<noteq> p1 \<and> isReg(p1, t)) \<longrightarrow> ~speak(p1)) 
\<and> (speak(p1) \<longrightarrow> isReg(p1, t1) \<and> broadcast(t1) \<and> (p1 \<noteq> p \<and> isReg(p, t1) \<longrightarrow> ~speak(p)))) \<longleftrightarrow> 
((speak(p) \<longrightarrow> isReg(p, t) \<and> broadcast(t) \<and> (p \<noteq> p1 \<and> isReg(p1, t)) \<longrightarrow> ~speak(p1))
& (speak(p1) \<longrightarrow> isReg(p1, t1) \<and> broadcast(t1) \<and> (p1 \<noteq> p2 \<and> isReg(p2, t1) \<longrightarrow> ~speak(p2))))"
  by auto

lemma "
((speak(p) \<longrightarrow> isReg(p, t) \<and> broadcast(t) \<and> (p \<noteq> p1 \<and> isReg(p1, t)) \<longrightarrow> ~speak(p1)) \<and> (speak(p1) \<longrightarrow> isReg(p1, t1) \<and> broadcast(t1) \<and> (p1 \<noteq> p \<and> isReg(p, t1) \<longrightarrow> ~speak(p)))) \<longleftrightarrow> ((speak(p) \<longrightarrow> isReg(p, t) \<and> broadcast(t) \<and> (p \<noteq> p1 \<and> isReg(p1, t)) \<longrightarrow> ~speak(p1))
& (speak(p1) \<longrightarrow> isReg(p1, t1) \<and> broadcast(t1) \<and> (p1 \<noteq> p2 \<and> isReg(p2, t1) \<longrightarrow> ~speak(p2))))
\<Longrightarrow> p = p2 \<and> t = t1"
  nitpick


lemma "speak(p1) \<longrightarrow> isReg(p1, t1) \<and> broadcast(t1) \<and> (p\<noteq>p1 \<and> isReg(p, t1)) \<longrightarrow> ~speak(p)"
  nitpick
*)
(*2nd part same as javabip*)
(*
lemma test_1:  "
\<not>((
((((P (''5c'', ''1'') \<longrightarrow>
     (Q (''1a'', ''1'') \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''1'')) \<and> (P (''5d'', ''1'') \<or> P (''5d'', ''2'') \<or> P (''5d'', ''3''))) \<or>
    (P (''5c'', ''1'') \<longrightarrow>
     (Q (''1a'', ''1'') \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''2'')) \<and> (P (''5d'', ''1'') \<or> P (''5d'', ''2'') \<or> P (''5d'', ''3''))) \<or>
    (P (''5c'', ''1'') \<longrightarrow>
     (Q (''1a'', ''1'') \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''3'')) \<and> (P (''5d'', ''1'') \<or> P (''5d'', ''2'') \<or> P (''5d'', ''3''))) \<or>
    (P (''5c'', ''1'') \<longrightarrow>
     (Q (''1a'', ''2'') \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''1'')) \<and> (P (''5d'', ''1'') \<or> P (''5d'', ''2'') \<or> P (''5d'', ''3''))) \<or>
    (P (''5c'', ''1'') \<longrightarrow>
     (Q (''1a'', ''2'') \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''2'')) \<and> (P (''5d'', ''1'') \<or> P (''5d'', ''2'') \<or> P (''5d'', ''3''))) \<or>
    (P (''5c'', ''1'') \<longrightarrow>
     (Q (''1a'', ''2'') \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''3'')) \<and> (P (''5d'', ''1'') \<or> P (''5d'', ''2'') \<or> P (''5d'', ''3'')))) \<and>
   ((P (''5c'', ''2'') \<longrightarrow>
     (Q (''1a'', ''1'') \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''1'')) \<and> (P (''5d'', ''1'') \<or> P (''5d'', ''2'') \<or> P (''5d'', ''3''))) \<or>
    (P (''5c'', ''2'') \<longrightarrow>
     (Q (''1a'', ''1'') \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''2'')) \<and> (P (''5d'', ''1'') \<or> P (''5d'', ''2'') \<or> P (''5d'', ''3''))) \<or>
    (P (''5c'', ''2'') \<longrightarrow>
     (Q (''1a'', ''1'') \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''3'')) \<and> (P (''5d'', ''1'') \<or> P (''5d'', ''2'') \<or> P (''5d'', ''3''))) \<or>
    (P (''5c'', ''2'') \<longrightarrow>
     (Q (''1a'', ''2'') \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''1'')) \<and> (P (''5d'', ''1'') \<or> P (''5d'', ''2'') \<or> P (''5d'', ''3''))) \<or>
    (P (''5c'', ''2'') \<longrightarrow>
     (Q (''1a'', ''2'') \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''2'')) \<and> (P (''5d'', ''1'') \<or> P (''5d'', ''2'') \<or> P (''5d'', ''3''))) \<or>
    (P (''5c'', ''2'') \<longrightarrow>
     (Q (''1a'', ''2'') \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''3'')) \<and> (P (''5d'', ''1'') \<or> P (''5d'', ''2'') \<or> P (''5d'', ''3''))))) \<and>
  ((P (''5d'', ''1'') \<longrightarrow> (Q (''1a'', ''1'') \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''1'')) \<and> (P (''5c'', ''1'') \<or> P (''5c'', ''2''))) \<or>
   (P (''5d'', ''1'') \<longrightarrow> (Q (''1a'', ''1'') \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''2'')) \<and> (P (''5c'', ''1'') \<or> P (''5c'', ''2''))) \<or>
   (P (''5d'', ''1'') \<longrightarrow> (Q (''1a'', ''1'') \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''3'')) \<and> (P (''5c'', ''1'') \<or> P (''5c'', ''2''))) \<or>
   (P (''5d'', ''1'') \<longrightarrow> (Q (''1a'', ''2'') \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''1'')) \<and> (P (''5c'', ''1'') \<or> P (''5c'', ''2''))) \<or>
   (P (''5d'', ''1'') \<longrightarrow> (Q (''1a'', ''2'') \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''2'')) \<and> (P (''5c'', ''1'') \<or> P (''5c'', ''2''))) \<or>
   (P (''5d'', ''1'') \<longrightarrow> (Q (''1a'', ''2'') \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''3'')) \<and> (P (''5c'', ''1'') \<or> P (''5c'', ''2'')))) \<and>
  ((P (''5d'', ''2'') \<longrightarrow> (Q (''1a'', ''1'') \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''1'')) \<and> (P (''5c'', ''1'') \<or> P (''5c'', ''2''))) \<or>
   (P (''5d'', ''2'') \<longrightarrow> (Q (''1a'', ''1'') \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''2'')) \<and> (P (''5c'', ''1'') \<or> P (''5c'', ''2''))) \<or>
   (P (''5d'', ''2'') \<longrightarrow> (Q (''1a'', ''1'') \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''3'')) \<and> (P (''5c'', ''1'') \<or> P (''5c'', ''2''))) \<or>
   (P (''5d'', ''2'') \<longrightarrow> (Q (''1a'', ''2'') \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''1'')) \<and> (P (''5c'', ''1'') \<or> P (''5c'', ''2''))) \<or>
   (P (''5d'', ''2'') \<longrightarrow> (Q (''1a'', ''2'') \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''2'')) \<and> (P (''5c'', ''1'') \<or> P (''5c'', ''2''))) \<or>
   (P (''5d'', ''2'') \<longrightarrow> (Q (''1a'', ''2'') \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''3'')) \<and> (P (''5c'', ''1'') \<or> P (''5c'', ''2'')))) \<and>
  ((P (''5d'', ''3'') \<longrightarrow> (Q (''1a'', ''1'') \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''1'')) \<and> (P (''5c'', ''1'') \<or> P (''5c'', ''2''))) \<or>
   (P (''5d'', ''3'') \<longrightarrow> (Q (''1a'', ''1'') \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''2'')) \<and> (P (''5c'', ''1'') \<or> P (''5c'', ''2''))) \<or>
   (P (''5d'', ''3'') \<longrightarrow> (Q (''1a'', ''1'') \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''3'')) \<and> (P (''5c'', ''1'') \<or> P (''5c'', ''2''))) \<or>
   (P (''5d'', ''3'') \<longrightarrow> (Q (''1a'', ''2'') \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''1'')) \<and> (P (''5c'', ''1'') \<or> P (''5c'', ''2''))) \<or>
   (P (''5d'', ''3'') \<longrightarrow> (Q (''1a'', ''2'') \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''2'')) \<and> (P (''5c'', ''1'') \<or> P (''5c'', ''2''))) \<or>
   (P (''5d'', ''3'') \<longrightarrow> (Q (''1a'', ''2'') \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''3'')) \<and> (P (''5c'', ''1'') \<or> P (''5c'', ''2''))))) \<and>
 (((P (''5c'', ''1'') \<longrightarrow> \<not> P (''5c'', ''2'')) \<and> (P (''5c'', ''2'') \<longrightarrow> \<not> P (''5c'', ''1''))) \<and>
  (P (''5d'', ''1'') \<longrightarrow> \<not> P (''5d'', ''2'') \<and> \<not> P (''5d'', ''3'')) \<and>
  (P (''5d'', ''2'') \<longrightarrow> \<not> P (''5d'', ''1'') \<and> \<not> P (''5d'', ''3'')) \<and>
  (P (''5d'', ''3'') \<longrightarrow> \<not> P (''5d'', ''1'') \<and> \<not> P (''5d'', ''2''))) \<and>
 ((Q (''1a'', ''1'') \<longrightarrow> \<not> Q (''1a'', ''2'')) \<and> (Q (''1a'', ''2'') \<longrightarrow> \<not> Q (''1a'', ''1''))) \<and>
 (Q (''2'', ''1'') \<longrightarrow> \<not> Q (''2'', ''2'') \<and> \<not> Q (''2'', ''3'')) \<and>
 (Q (''2'', ''2'') \<longrightarrow> \<not> Q (''2'', ''1'') \<and> \<not> Q (''2'', ''3'')) \<and> (Q (''2'', ''3'') \<longrightarrow> \<not> Q (''2'', ''1'') \<and> \<not> Q (''2'', ''2''))
)
\<longleftrightarrow>
(
(((P (''5c'', ''1'') \<longrightarrow>
    (((Q (''1a'', ''1'') \<and> \<not> Q (''1a'', ''2'')) \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''1'') \<and> \<not> Q (''2'', ''2'') \<and> \<not> Q (''2'', ''3'')) \<or>
     ((Q (''1a'', ''1'') \<and> \<not> Q (''1a'', ''2'')) \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''2'') \<and> \<not> Q (''2'', ''1'') \<and> \<not> Q (''2'', ''3'')) \<or>
     ((Q (''1a'', ''1'') \<and> \<not> Q (''1a'', ''2'')) \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''3'') \<and> \<not> Q (''2'', ''1'') \<and> \<not> Q (''2'', ''2'')) \<or>
     ((Q (''1a'', ''2'') \<and> \<not> Q (''1a'', ''1'')) \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''1'') \<and> \<not> Q (''2'', ''2'') \<and> \<not> Q (''2'', ''3'')) \<or>
     ((Q (''1a'', ''2'') \<and> \<not> Q (''1a'', ''1'')) \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''2'') \<and> \<not> Q (''2'', ''1'') \<and> \<not> Q (''2'', ''3'')) \<or>
     (Q (''1a'', ''2'') \<and> \<not> Q (''1a'', ''1'')) \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''3'') \<and> \<not> Q (''2'', ''1'') \<and> \<not> Q (''2'', ''2'')) \<and>
    (P (''5d'', ''1'') \<and> \<not> P (''5d'', ''2'') \<and> \<not> P (''5d'', ''3'') \<or>
     P (''5d'', ''2'') \<and> \<not> P (''5d'', ''1'') \<and> \<not> P (''5d'', ''3'') \<or> P (''5d'', ''3'') \<and> \<not> P (''5d'', ''1'') \<and> \<not> P (''5d'', ''2''))) \<and>
   (P (''5c'', ''2'') \<longrightarrow>
    (((Q (''1a'', ''1'') \<and> \<not> Q (''1a'', ''2'')) \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''1'') \<and> \<not> Q (''2'', ''2'') \<and> \<not> Q (''2'', ''3'')) \<or>
     ((Q (''1a'', ''1'') \<and> \<not> Q (''1a'', ''2'')) \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''2'') \<and> \<not> Q (''2'', ''1'') \<and> \<not> Q (''2'', ''3'')) \<or>
     ((Q (''1a'', ''1'') \<and> \<not> Q (''1a'', ''2'')) \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''3'') \<and> \<not> Q (''2'', ''1'') \<and> \<not> Q (''2'', ''2'')) \<or>
     ((Q (''1a'', ''2'') \<and> \<not> Q (''1a'', ''1'')) \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''1'') \<and> \<not> Q (''2'', ''2'') \<and> \<not> Q (''2'', ''3'')) \<or>
     ((Q (''1a'', ''2'') \<and> \<not> Q (''1a'', ''1'')) \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''2'') \<and> \<not> Q (''2'', ''1'') \<and> \<not> Q (''2'', ''3'')) \<or>
     (Q (''1a'', ''2'') \<and> \<not> Q (''1a'', ''1'')) \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''3'') \<and> \<not> Q (''2'', ''1'') \<and> \<not> Q (''2'', ''2'')) \<and>
    (P (''5d'', ''1'') \<and> \<not> P (''5d'', ''2'') \<and> \<not> P (''5d'', ''3'') \<or>
     P (''5d'', ''2'') \<and> \<not> P (''5d'', ''1'') \<and> \<not> P (''5d'', ''3'') \<or> P (''5d'', ''3'') \<and> \<not> P (''5d'', ''1'') \<and> \<not> P (''5d'', ''2'')))) \<and>
  (P (''5d'', ''1'') \<longrightarrow>
   (((Q (''1a'', ''1'') \<and> \<not> Q (''1a'', ''2'')) \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''1'') \<and> \<not> Q (''2'', ''2'') \<and> \<not> Q (''2'', ''3'')) \<or>
    ((Q (''1a'', ''1'') \<and> \<not> Q (''1a'', ''2'')) \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''2'') \<and> \<not> Q (''2'', ''1'') \<and> \<not> Q (''2'', ''3'')) \<or>
    ((Q (''1a'', ''1'') \<and> \<not> Q (''1a'', ''2'')) \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''3'') \<and> \<not> Q (''2'', ''1'') \<and> \<not> Q (''2'', ''2'')) \<or>
    ((Q (''1a'', ''2'') \<and> \<not> Q (''1a'', ''1'')) \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''1'') \<and> \<not> Q (''2'', ''2'') \<and> \<not> Q (''2'', ''3'')) \<or>
    ((Q (''1a'', ''2'') \<and> \<not> Q (''1a'', ''1'')) \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''2'') \<and> \<not> Q (''2'', ''1'') \<and> \<not> Q (''2'', ''3'')) \<or>
    (Q (''1a'', ''2'') \<and> \<not> Q (''1a'', ''1'')) \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''3'') \<and> \<not> Q (''2'', ''1'') \<and> \<not> Q (''2'', ''2'')) \<and>
   (P (''5c'', ''1'') \<and> \<not> P (''5c'', ''2'') \<or> P (''5c'', ''2'') \<and> \<not> P (''5c'', ''1''))) \<and>
  (P (''5d'', ''2'') \<longrightarrow>
   (((Q (''1a'', ''1'') \<and> \<not> Q (''1a'', ''2'')) \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''1'') \<and> \<not> Q (''2'', ''2'') \<and> \<not> Q (''2'', ''3'')) \<or>
    ((Q (''1a'', ''1'') \<and> \<not> Q (''1a'', ''2'')) \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''2'') \<and> \<not> Q (''2'', ''1'') \<and> \<not> Q (''2'', ''3'')) \<or>
    ((Q (''1a'', ''1'') \<and> \<not> Q (''1a'', ''2'')) \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''3'') \<and> \<not> Q (''2'', ''1'') \<and> \<not> Q (''2'', ''2'')) \<or>
    ((Q (''1a'', ''2'') \<and> \<not> Q (''1a'', ''1'')) \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''1'') \<and> \<not> Q (''2'', ''2'') \<and> \<not> Q (''2'', ''3'')) \<or>
    ((Q (''1a'', ''2'') \<and> \<not> Q (''1a'', ''1'')) \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''2'') \<and> \<not> Q (''2'', ''1'') \<and> \<not> Q (''2'', ''3'')) \<or>
    (Q (''1a'', ''2'') \<and> \<not> Q (''1a'', ''1'')) \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''3'') \<and> \<not> Q (''2'', ''1'') \<and> \<not> Q (''2'', ''2'')) \<and>
   (P (''5c'', ''1'') \<and> \<not> P (''5c'', ''2'') \<or> P (''5c'', ''2'') \<and> \<not> P (''5c'', ''1''))) \<and>
  (P (''5d'', ''3'') \<longrightarrow>
   (((Q (''1a'', ''1'') \<and> \<not> Q (''1a'', ''2'')) \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''1'') \<and> \<not> Q (''2'', ''2'') \<and> \<not> Q (''2'', ''3'')) \<or>
    ((Q (''1a'', ''1'') \<and> \<not> Q (''1a'', ''2'')) \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''2'') \<and> \<not> Q (''2'', ''1'') \<and> \<not> Q (''2'', ''3'')) \<or>
    ((Q (''1a'', ''1'') \<and> \<not> Q (''1a'', ''2'')) \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''3'') \<and> \<not> Q (''2'', ''1'') \<and> \<not> Q (''2'', ''2'')) \<or>
    ((Q (''1a'', ''2'') \<and> \<not> Q (''1a'', ''1'')) \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''1'') \<and> \<not> Q (''2'', ''2'') \<and> \<not> Q (''2'', ''3'')) \<or>
    ((Q (''1a'', ''2'') \<and> \<not> Q (''1a'', ''1'')) \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''2'') \<and> \<not> Q (''2'', ''1'') \<and> \<not> Q (''2'', ''3'')) \<or>
    (Q (''1a'', ''2'') \<and> \<not> Q (''1a'', ''1'')) \<and> Q (''1b'', ''1'') \<or> Q (''2'', ''3'') \<and> \<not> Q (''2'', ''1'') \<and> \<not> Q (''2'', ''2'')) \<and>
   (P (''5c'', ''1'') \<and> \<not> P (''5c'', ''2'') \<or> P (''5c'', ''2'') \<and> \<not> P (''5c'', ''1'')))) \<and>
 (((P (''5c'', ''1'') \<longrightarrow> \<not> P (''5c'', ''2'')) \<and> (P (''5c'', ''2'') \<longrightarrow> \<not> P (''5c'', ''1''))) \<and>
  (P (''5d'', ''1'') \<longrightarrow> \<not> P (''5d'', ''2'') \<and> \<not> P (''5d'', ''3'')) \<and>
  (P (''5d'', ''2'') \<longrightarrow> \<not> P (''5d'', ''1'') \<and> \<not> P (''5d'', ''3'')) \<and>
  (P (''5d'', ''3'') \<longrightarrow> \<not> P (''5d'', ''1'') \<and> \<not> P (''5d'', ''2''))) \<and>
 ((Q (''1a'', ''1'') \<longrightarrow> \<not> Q (''1a'', ''2'')) \<and> (Q (''1a'', ''2'') \<longrightarrow> \<not> Q (''1a'', ''1''))) \<and>
 (Q (''2'', ''1'') \<longrightarrow> \<not> Q (''2'', ''2'') \<and> \<not> Q (''2'', ''3'')) \<and>
 (Q (''2'', ''2'') \<longrightarrow> \<not> Q (''2'', ''1'') \<and> \<not> Q (''2'', ''3'')) \<and> (Q (''2'', ''3'') \<longrightarrow> \<not> Q (''2'', ''1'') \<and> \<not> Q (''2'', ''2''))
))
"
  nitpick
  sledgehammer
  by smt
*)

lemma "(a1 \<longrightarrow> (b1 \<or> c1)) \<and> (\<not>a1 \<or> \<not>a2) \<and> (\<not>b1\<and>\<not>b2 \<or> \<not>b1\<and>\<not>b3 \<or> \<not>b3\<and>\<not>b2) \<and> (\<not>c1\<and>\<not>c2 \<or> \<not>c1\<and>\<not>c3 \<or> \<not>c3\<and>\<not>c2)
\<Longrightarrow>
(a1 \<longrightarrow> (b1\<and>\<not>b2\<and>\<not>b3 \<or> c1\<and>\<not>c2\<and>\<not>c3)) \<and> (\<not>a1 \<or> \<not>a2) \<and> (\<not>b1\<and>\<not>b2 \<or> \<not>b1\<and>\<not>b3 \<or> \<not>b3\<and>\<not>b2) \<and> (\<not>c1\<and>\<not>c2 \<or> \<not>c1\<and>\<not>c3 \<or> \<not>c3\<and>\<not>c2)
"
  by blast

lemma "
(a1 \<longrightarrow> (b1\<and>\<not>b2\<and>\<not>b3 \<or> c1\<and>\<not>c2\<and>\<not>c3)) \<and> (\<not>a1 \<or> \<not>a2) \<and> (\<not>b1\<and>\<not>b2 \<or> \<not>b1\<and>\<not>b3 \<or> \<not>b3\<and>\<not>b2) \<and> (\<not>c1\<and>\<not>c2 \<or> \<not>c1\<and>\<not>c3 \<or> \<not>c3\<and>\<not>c2)
\<Longrightarrow>
(a1 \<longrightarrow> (b1 \<or> c1)) \<and> (\<not>a1 \<or> \<not>a2) \<and> (\<not>b1\<and>\<not>b2 \<or> \<not>b1\<and>\<not>b3 \<or> \<not>b3\<and>\<not>b2) \<and> (\<not>c1\<and>\<not>c2 \<or> \<not>c1\<and>\<not>c3 \<or> \<not>c3\<and>\<not>c2)
"
  by blast

value "
((a1 \<longrightarrow> b1 \<and> c1) \<and> \<not>a2  \<and> \<not>b2  \<and> \<not>c2  \<and> \<not>c3)
\<or> ((a1 \<longrightarrow> b1 \<and> c2) \<and> \<not>a2  \<and> \<not>b2  \<and> \<not>c2  \<and> \<not>c3)
\<or> ((a1 \<longrightarrow> b1 \<and> c3) \<and> \<not>a2  \<and> \<not>b2  \<and> \<not>c2  \<and> \<not>c3)
\<or> ((a1 \<longrightarrow> b2 \<and> c1) \<and> \<not>a2  \<and> \<not>b2  \<and> \<not>c2  \<and> \<not>c3)
\<or> ((a1 \<longrightarrow> b2 \<and> c2) \<and> \<not>a2  \<and> \<not>b2  \<and> \<not>c2  \<and> \<not>c3)
\<or> ((a1 \<longrightarrow> b2 \<and> c3) \<and> \<not>a2  \<and> \<not>b2  \<and> \<not>c2  \<and> \<not>c3)
\<or> ((a1 \<longrightarrow> b1 \<and> c1) \<and> \<not>a2  \<and> \<not>b2  \<and> \<not>c2  \<and> \<not>c3)
\<or> ((a1 \<longrightarrow> b1 \<and> c2) \<and> \<not>a2  \<and> \<not>b2  \<and> \<not>c2  \<and> \<not>c3)
\<or> ((a1 \<longrightarrow> b1 \<and> c3) \<and> \<not>a2  \<and> \<not>b2  \<and> \<not>c2  \<and> \<not>c3)
\<or> ((a1 \<longrightarrow> b2 \<and> c1) \<and> \<not>a2  \<and> \<not>b2  \<and> \<not>c2  \<and> \<not>c3)
\<or> ((a1 \<longrightarrow> b2 \<and> c2) \<and> \<not>a2  \<and> \<not>b2  \<and> \<not>c2  \<and> \<not>c3)
\<or> ((a1 \<longrightarrow> b2 \<and> c3) \<and> \<not>a2  \<and> \<not>b2  \<and> \<not>c2  \<and> \<not>c3)"

value "
((a1 \<longrightarrow> b1 \<and> c1) 
\<or> (a1 \<longrightarrow> b1 \<and> c2)
\<or> (a1 \<longrightarrow> b1 \<and> c3)
\<or> (a1 \<longrightarrow> b2 \<and> c1)
\<or> (a1 \<longrightarrow> b2 \<and> c2)
\<or> (a1 \<longrightarrow> b2 \<and> c3)
\<or> (a2 \<longrightarrow> b1 \<and> c1)
\<or> (a2 \<longrightarrow> b1 \<and> c2)
\<or> (a2 \<longrightarrow> b1 \<and> c3)
\<or> (a2 \<longrightarrow> b2 \<and> c1)
\<or> (a2 \<longrightarrow> b2 \<and> c2)
\<or> (a2 \<longrightarrow> b2 \<and> c3))
\<and> (a1 \<longrightarrow> \<not>a2)
\<and> (b1 \<longrightarrow> \<not>b2)
\<and> (c1 \<longrightarrow> \<not>c2 \<and> \<not>c3)
\<and> (c2 \<longrightarrow> \<not>c1 \<and> \<not>c3)
\<and> (c3 \<longrightarrow> \<not>c2 \<and> \<not>c1)
"

lemma t_1: "(((a1 \<longrightarrow> b1 \<and> c1) \<and> \<not>a2  \<and> \<not>b2  \<and> \<not>c2  \<and> \<not>c3)
\<or> ((a1 \<longrightarrow> b1 \<and> c2) \<and> \<not>a2  \<and> \<not>b2  \<and> \<not>c2  \<and> \<not>c3)
\<or> ((a1 \<longrightarrow> b1 \<and> c3) \<and> \<not>a2  \<and> \<not>b2  \<and> \<not>c2  \<and> \<not>c3)
\<or> ((a1 \<longrightarrow> b2 \<and> c1) \<and> \<not>a2  \<and> \<not>b2  \<and> \<not>c2  \<and> \<not>c3)
\<or> ((a1 \<longrightarrow> b2 \<and> c2) \<and> \<not>a2  \<and> \<not>b2  \<and> \<not>c2  \<and> \<not>c3)
\<or> ((a1 \<longrightarrow> b2 \<and> c3) \<and> \<not>a2  \<and> \<not>b2  \<and> \<not>c2  \<and> \<not>c3)
\<or> ((a1 \<longrightarrow> b1 \<and> c1) \<and> \<not>a2  \<and> \<not>b2  \<and> \<not>c2  \<and> \<not>c3)
\<or> ((a1 \<longrightarrow> b1 \<and> c2) \<and> \<not>a2  \<and> \<not>b2  \<and> \<not>c2  \<and> \<not>c3)
\<or> ((a1 \<longrightarrow> b1 \<and> c3) \<and> \<not>a2  \<and> \<not>b2  \<and> \<not>c2  \<and> \<not>c3)
\<or> ((a1 \<longrightarrow> b2 \<and> c1) \<and> \<not>a2  \<and> \<not>b2  \<and> \<not>c2  \<and> \<not>c3)
\<or> ((a1 \<longrightarrow> b2 \<and> c2) \<and> \<not>a2  \<and> \<not>b2  \<and> \<not>c2  \<and> \<not>c3)
\<or> ((a1 \<longrightarrow> b2 \<and> c3) \<and> \<not>a2  \<and> \<not>b2  \<and> \<not>c2  \<and> \<not>c3))
\<Longrightarrow> (((a1 \<longrightarrow> b1 \<and> c1) 
\<or> (a1 \<longrightarrow> b1 \<and> c2)
\<or> (a1 \<longrightarrow> b1 \<and> c3)
\<or> (a1 \<longrightarrow> b2 \<and> c1)
\<or> (a1 \<longrightarrow> b2 \<and> c2)
\<or> (a1 \<longrightarrow> b2 \<and> c3)
\<or> (a2 \<longrightarrow> b1 \<and> c1)
\<or> (a2 \<longrightarrow> b1 \<and> c2)
\<or> (a2 \<longrightarrow> b1 \<and> c3)
\<or> (a2 \<longrightarrow> b2 \<and> c1)
\<or> (a2 \<longrightarrow> b2 \<and> c2)
\<or> (a2 \<longrightarrow> b2 \<and> c3))
\<and> (a1 \<longrightarrow> \<not>a2)
\<and> (b1 \<longrightarrow> \<not>b2)
\<and> (c1 \<longrightarrow> \<not>c2 \<and> \<not>c3)
\<and> (c2 \<longrightarrow> \<not>c1 \<and> \<not>c3)
\<and> (c3 \<longrightarrow> \<not>c2 \<and> \<not>c1))
"
  by auto

definition la :: "nat list" where "la = [1::nat, 2]"
definition lb :: "nat list" where "lb = [3::nat, 4]"
definition lc :: "nat list" where "lc = [5::nat, 6, 7]"
definition ld :: "nat list" where "ld = [8::nat, 9]"

(*BIP Simon*)
value "\<exists>i \<in> set la.\<exists>j \<in> set lb. \<exists>k \<in> set lc. ((P i \<longrightarrow> ((Q j \<and> R k))) 
\<and> (\<forall>i1 \<in> set la - {i}.\<not>P i1)
\<and> (\<forall>j1 \<in> set lb - {j}.\<not>Q j1)
\<and> (\<forall>k1 \<in> set lc - {k}.\<not>R k1)
)"

(*BIP Trinh*)
value "\<forall>i \<in> set la. ((P i \<longrightarrow> (\<exists>j \<in> set lb. \<exists>k \<in> set lc.(Q j \<and> R k))) 
\<and> (\<forall>i \<in> set la.(P i \<longrightarrow> (\<forall>i1 \<in> set la - {i}.\<not>P i1)))
\<and> (\<forall>j \<in> set lb.(Q j \<longrightarrow> (\<forall>j1 \<in> set lb - {j}.\<not>Q j1)))
\<and> (\<forall>k \<in> set lc.(R k \<longrightarrow> (\<forall>k1 \<in> set lc - {k}.\<not>R k1)))
)"

(*JavaBIP Simon*)
value "\<forall>i \<in> set la. ((P i \<longrightarrow> (\<exists>j \<in> set lb. \<exists>k \<in> set lc.(Q j \<and> R k) \<and> (\<forall>j1 \<in> set lb - {j}.\<not>Q j1)
\<and> (\<forall>k1 \<in> set lc - {k}.\<not>R k1))) 
\<and> (\<forall>i \<in> set la.(P i \<longrightarrow> (\<forall>i1 \<in> set la - {i}.\<not>P i1)))
\<and> (\<forall>j \<in> set lb.(Q j \<longrightarrow> (\<forall>j1 \<in> set lb - {j}.\<not>Q j1)))
\<and> (\<forall>k \<in> set lc.(R k \<longrightarrow> (\<forall>k1 \<in> set lc - {k}.\<not>R k1)))
)"

lemma bsimon_btrinh: "(\<exists>i \<in> set la.\<exists>j \<in> set lb. \<exists>k \<in> set lc. ((P i \<longrightarrow> ((Q j \<and> R k))) 
\<and> (\<forall>i1 \<in> set la - {i}.\<not>P i1)
\<and> (\<forall>j1 \<in> set lb - {j}.\<not>Q j1)
\<and> (\<forall>k1 \<in> set lc - {k}.\<not>R k1)
))
\<Longrightarrow> (\<forall>i \<in> set la. ((P i \<longrightarrow> (\<exists>j \<in> set lb. \<exists>k \<in> set lc.(Q j \<and> R k))) 
\<and> (\<forall>i \<in> set la.(P i \<longrightarrow> (\<forall>i1 \<in> set la - {i}.\<not>P i1)))
\<and> (\<forall>j \<in> set lb.(Q j \<longrightarrow> (\<forall>j1 \<in> set lb - {j}.\<not>Q j1)))
\<and> (\<forall>k \<in> set lc.(R k \<longrightarrow> (\<forall>k1 \<in> set lc - {k}.\<not>R k1)))
))"
  by blast

lemma test_simple: "(P \<longrightarrow> Q) \<longleftrightarrow> (\<not>P \<or> Q)"
  by simp
lemma test_simple_1: "(P \<longrightarrow> Q) \<Longrightarrow> (\<not>P \<or> Q)"
  by simp
lemma test_simple_1_rev: "(\<not>P \<or> Q) \<equiv> (P \<longrightarrow> Q)"
  by simp
(*
lemma bip_jvb: "(\<exists>i \<in> set la.\<exists>j \<in> set lb. \<exists>k \<in> set lc. ((P i \<longrightarrow> ((Q j \<and> R k))) 
\<and> (\<forall>i1 \<in> set la - {i}.\<not>P i1)
\<and> (\<forall>j1 \<in> set lb - {j}.\<not>Q j1)
\<and> (\<forall>k1 \<in> set lc - {k}.\<not>R k1)
))
\<longleftrightarrow> (\<forall>i \<in> set la. ((P i \<longrightarrow> (\<exists>j \<in> set lb. \<exists>k \<in> set lc.(Q j \<and> R k) \<and> (\<forall>j1 \<in> set lb - {j}.\<not>Q j1)
\<and> (\<forall>k1 \<in> set lc - {k}.\<not>R k1))) 
\<and> (\<forall>i \<in> set la.(P i \<longrightarrow> (\<forall>i1 \<in> set la - {i}.\<not>P i1)))
\<and> (\<forall>j \<in> set lb.(Q j \<longrightarrow> (\<forall>j1 \<in> set lb - {j}.\<not>Q j1)))
\<and> (\<forall>k \<in> set lc.(R k \<longrightarrow> (\<forall>k1 \<in> set lc - {k}.\<not>R k1)))
))"
  nitpick [card = 1-10]
*)

lemma bip_jvb_general:
  fixes la::"nat list"
  fixes lb::"nat list"
  fixes lc::"nat list"
  assumes "card (set la) > 1" and "card (set lb) > 1" and "card (set lc) > 1"
  shows "
      ((\<exists>i \<in> set la.\<exists>j \<in> set lb. \<exists>k \<in> set lc. ((P i \<longrightarrow> ((Q j \<and> R k))) 
    \<and> (\<forall>i1 \<in> set la - {i}.\<not>P i1)
    \<and> (\<forall>j1 \<in> set lb - {j}.\<not>Q j1)
    \<and> (\<forall>k1 \<in> set lc - {k}.\<not>R k1)
    ))
    \<longleftrightarrow> (\<forall>i \<in> set la. (P i \<longrightarrow> (\<exists>j \<in> set lb. \<exists>k \<in> set lc.(Q j \<and> R k) 
        \<and> (\<forall>j1 \<in> set lb - {j}.\<not>Q j1)
        \<and> (\<forall>k1 \<in> set lc - {k}.\<not>R k1)
        )
      ) 
    \<and> (\<forall>i \<in> set la.(P i \<longrightarrow> (\<forall>i1 \<in> set la - {i}.\<not>P i1)))
    \<and> (\<forall>j \<in> set lb.(Q j \<longrightarrow> (\<forall>j1 \<in> set lb - {j}.\<not>Q j1)))
    \<and> (\<forall>k \<in> set lc.(R k \<longrightarrow> (\<forall>k1 \<in> set lc - {k}.\<not>R k1)))
    ))"
  nitpick [card=1-10]

lemma bip_jvb_general_rev:
  fixes la::"nat list"
  fixes lb::"nat list"
  fixes lc::"nat list"
  assumes "card (set la) > 1" and "card (set lb) > 1" and "card (set lc) > 1"
  shows "
     (\<forall>i \<in> set la. (P i \<longrightarrow> (\<exists>j \<in> set lb. \<exists>k \<in> set lc.(Q j \<and> R k) 
        \<and> (\<forall>j1 \<in> set lb - {j}.\<not>Q j1)
        \<and> (\<forall>k1 \<in> set lc - {k}.\<not>R k1)
        )
      ) 
    \<and> (\<forall>i \<in> set la.(P i \<longrightarrow> (\<forall>i1 \<in> set la - {i}.\<not>P i1)))
    \<and> (\<forall>j \<in> set lb.(Q j \<longrightarrow> (\<forall>j1 \<in> set lb - {j}.\<not>Q j1)))
    \<and> (\<forall>k \<in> set lc.(R k \<longrightarrow> (\<forall>k1 \<in> set lc - {k}.\<not>R k1)))
    ) 
    \<Longrightarrow>  (\<exists>i \<in> set la.\<exists>j \<in> set lb. \<exists>k \<in> set lc. ((P i \<longrightarrow> ((Q j \<and> R k))) 
    \<and> (\<forall>i1 \<in> set la - {i}.\<not>P i1)
    \<and> (\<forall>j1 \<in> set lb - {j}.\<not>Q j1)
    \<and> (\<forall>k1 \<in> set lc - {k}.\<not>R k1)
    ))"
  nitpick



lemma bip_jvb_general_4_1:
  fixes la::"nat list"
  fixes lb::"nat list"
  fixes lc::"nat list"
  fixes ld::"nat list"
  assumes "card (set la) > 1" and "card (set lb) > 1" and "card (set lc) > 1" and "card (set ld) > 1"
  shows "
      (\<exists>i \<in> set la.\<exists>j \<in> set lb. \<exists>k \<in> set lc. \<exists>l \<in> set ld. ((P i \<longrightarrow> ((Q j \<and> R k \<and> S l))) 
    \<and> (\<forall>i1 \<in> set la - {i}.\<not>P i1)
    \<and> (\<forall>j1 \<in> set lb - {j}.\<not>Q j1)
    \<and> (\<forall>k1 \<in> set lc - {k}.\<not>R k1)
    \<and> (\<forall>l1 \<in> set ld - {l}.\<not>S l1)
    ))
    \<Longrightarrow> ((\<forall>i \<in> set la. (P i \<longrightarrow> (\<exists>j \<in> set lb. \<exists>k \<in> set lc. \<exists>l \<in> set ld.(Q j \<and> R k \<and> S l) 
        \<and> (\<forall>j1 \<in> set lb - {j}.\<not>Q j1)
        \<and> (\<forall>k1 \<in> set lc - {k}.\<not>R k1)
        \<and> (\<forall>l1 \<in> set ld - {l}.\<not>S l1)
        )
      )) 
    \<and> (\<forall>i \<in> set la.(P i \<longrightarrow> (\<forall>i1 \<in> set la - {i}.\<not>P i1)))
    \<and> (\<forall>j \<in> set lb.(Q j \<longrightarrow> (\<forall>j1 \<in> set lb - {j}.\<not>Q j1)))
    \<and> (\<forall>k \<in> set lc.(R k \<longrightarrow> (\<forall>k1 \<in> set lc - {k}.\<not>R k1)))
    \<and> (\<forall>l \<in> set ld.(S l \<longrightarrow> (\<forall>l1 \<in> set ld - {l}.\<not>S l1)))
    )"
  by blast

lemma bip_jvb_general_4_2:
  fixes la::"nat list"
  fixes lb::"nat list"
  fixes lc::"nat list"
  fixes ld::"nat list"
  assumes "card (set la) > 1" and "card (set lb) > 1" and "card (set lc) > 1" and "card (set ld) > 1"
  shows "
      (\<exists>l \<in> set ld.\<exists>j \<in> set lb. \<exists>k \<in> set lc. \<exists>i \<in> set la. ((S l \<longrightarrow> ((Q j \<and> R k \<and> P i))) 
    \<and> (\<forall>i1 \<in> set la - {i}.\<not>P i1)
    \<and> (\<forall>j1 \<in> set lb - {j}.\<not>Q j1)
    \<and> (\<forall>k1 \<in> set lc - {k}.\<not>R k1)
    \<and> (\<forall>l1 \<in> set ld - {l}.\<not>S l1)
    ))
    \<Longrightarrow> ((\<forall>l \<in> set ld. (S l \<longrightarrow> (\<exists>j \<in> set lb. \<exists>k \<in> set lc. \<exists>i \<in> set la.(Q j \<and> R k \<and> P i) 
        \<and> (\<forall>j1 \<in> set lb - {j}.\<not>Q j1)
        \<and> (\<forall>k1 \<in> set lc - {k}.\<not>R k1)
        \<and> (\<forall>i1 \<in> set la - {i}.\<not>P i1)
        )
      )) 
    \<and> (\<forall>i \<in> set la.(P i \<longrightarrow> (\<forall>i1 \<in> set la - {i}.\<not>P i1)))
    \<and> (\<forall>j \<in> set lb.(Q j \<longrightarrow> (\<forall>j1 \<in> set lb - {j}.\<not>Q j1)))
    \<and> (\<forall>k \<in> set lc.(R k \<longrightarrow> (\<forall>k1 \<in> set lc - {k}.\<not>R k1)))
    \<and> (\<forall>l \<in> set ld.(S l \<longrightarrow> (\<forall>l1 \<in> set ld - {l}.\<not>S l1)))
    )"
  by blast

value "(
        (\<exists>i \<in> set la.\<exists>j \<in> set lb. \<exists>k \<in> set lc. \<exists>l \<in> set ld. ((P i \<longrightarrow> ((Q j \<and> R k \<and> S l))) 
        \<and> (\<forall>i1 \<in> set la - {i}.\<not>P i1)
        \<and> (\<forall>j1 \<in> set lb - {j}.\<not>Q j1)
        \<and> (\<forall>k1 \<in> set lc - {k}.\<not>R k1)
        \<and> (\<forall>l1 \<in> set ld - {l}.\<not>S l1)
        )) \<and>
        (\<exists>l \<in> set ld.\<exists>j \<in> set lb. \<exists>k \<in> set lc. \<exists>i \<in> set la. ((S l \<longrightarrow> ((Q j \<and> R k \<and> P i))) 
        \<and> (\<forall>i1 \<in> set la - {i}.\<not>P i1)
        \<and> (\<forall>j1 \<in> set lb - {j}.\<not>Q j1)
        \<and> (\<forall>k1 \<in> set lc - {k}.\<not>R k1)
        \<and> (\<forall>l1 \<in> set ld - {l}.\<not>S l1)
        ))
    )"

value "(
      (\<forall>i \<in> set la. (P i \<longrightarrow> (\<exists>j \<in> set lb. \<exists>k \<in> set lc. \<exists>l \<in> set ld.(Q j \<and> R k \<and> S l) 
        \<and> (\<forall>j1 \<in> set lb - {j}.\<not>Q j1)
        \<and> (\<forall>k1 \<in> set lc - {k}.\<not>R k1)
        \<and> (\<forall>l1 \<in> set ld - {l}.\<not>S l1)
        )
        )) 
      \<and> (\<forall>i \<in> set la.(P i \<longrightarrow> (\<forall>i1 \<in> set la - {i}.\<not>P i1)))
      \<and> (\<forall>j \<in> set lb.(Q j \<longrightarrow> (\<forall>j1 \<in> set lb - {j}.\<not>Q j1)))
      \<and> (\<forall>k \<in> set lc.(R k \<longrightarrow> (\<forall>k1 \<in> set lc - {k}.\<not>R k1)))
      \<and> (\<forall>l \<in> set ld.(S l \<longrightarrow> (\<forall>l1 \<in> set ld - {l}.\<not>S l1)))
       \<and>
      (\<forall>l \<in> set ld. (S l \<longrightarrow> (\<exists>j \<in> set lb. \<exists>k \<in> set lc. \<exists>i \<in> set la.(Q j \<and> R k \<and> P i) 
        \<and> (\<forall>j1 \<in> set lb - {j}.\<not>Q j1)
        \<and> (\<forall>k1 \<in> set lc - {k}.\<not>R k1)
        \<and> (\<forall>i1 \<in> set la - {i}.\<not>P i1)
        )
        ))
      \<and> (\<forall>i \<in> set la.(P i \<longrightarrow> (\<forall>i1 \<in> set la - {i}.\<not>P i1)))
      \<and> (\<forall>j \<in> set lb.(Q j \<longrightarrow> (\<forall>j1 \<in> set lb - {j}.\<not>Q j1)))
      \<and> (\<forall>k \<in> set lc.(R k \<longrightarrow> (\<forall>k1 \<in> set lc - {k}.\<not>R k1)))
      \<and> (\<forall>l \<in> set ld.(S l \<longrightarrow> (\<forall>l1 \<in> set ld - {l}.\<not>S l1)))
    )"

lemma bip_jvb_general_3_22:
  fixes la::"nat list"
  fixes lb::"nat list"
  fixes lc::"nat list"
  assumes "card (set la) > 1" and "card (set lb) > 1" and "card (set lc) > 1"
  shows "
      (
        (\<exists>i \<in> set la.\<exists>j \<in> set lb. \<exists>k \<in> set lc. ((P i \<longrightarrow> ((Q j \<and> R k))) 
        \<and> (\<forall>i1 \<in> set la - {i}.\<not>P i1)
        \<and> (\<forall>j1 \<in> set lb - {j}.\<not>Q j1)
        \<and> (\<forall>k1 \<in> set lc - {k}.\<not>R k1)
        )) \<and>
        (\<exists>j \<in> set lb. \<exists>k \<in> set lc. \<exists>i \<in> set la. ((Q j \<longrightarrow> ((R k \<and> P i))) 
        \<and> (\<forall>i1 \<in> set la - {i}.\<not>P i1)
        \<and> (\<forall>j1 \<in> set lb - {j}.\<not>Q j1)
        \<and> (\<forall>k1 \<in> set lc - {k}.\<not>R k1)
        ))
    ) \<Longrightarrow>
    (
      (\<forall>i \<in> set la. (P i \<longrightarrow> (\<exists>j \<in> set lb. \<exists>k \<in> set lc. (Q j \<and> R k) 
        \<and> (\<forall>j1 \<in> set lb - {j}.\<not>Q j1)
        \<and> (\<forall>k1 \<in> set lc - {k}.\<not>R k1)
        )
        )) 
      \<and> (\<forall>i \<in> set la.(P i \<longrightarrow> (\<forall>i1 \<in> set la - {i}.\<not>P i1)))
      \<and> (\<forall>j \<in> set lb.(Q j \<longrightarrow> (\<forall>j1 \<in> set lb - {j}.\<not>Q j1)))
      \<and> (\<forall>k \<in> set lc.(R k \<longrightarrow> (\<forall>k1 \<in> set lc - {k}.\<not>R k1)))
       \<and>
      (\<forall>j \<in> set lb. (Q j \<longrightarrow> (\<exists>k \<in> set lc. \<exists>i \<in> set la.(R k \<and> P i) 
        \<and> (\<forall>k1 \<in> set lc - {k}.\<not>R k1)
        \<and> (\<forall>i1 \<in> set la - {i}.\<not>P i1)
        )
        ))
      \<and> (\<forall>i \<in> set la.(P i \<longrightarrow> (\<forall>i1 \<in> set la - {i}.\<not>P i1)))
      \<and> (\<forall>j \<in> set lb.(Q j \<longrightarrow> (\<forall>j1 \<in> set lb - {j}.\<not>Q j1)))
      \<and> (\<forall>k \<in> set lc.(R k \<longrightarrow> (\<forall>k1 \<in> set lc - {k}.\<not>R k1)))
    )"
  by (smt insert_Diff insert_iff)
  (*by (smt insert_Diff insert_iff) [smt_timeout = 300]*)
end