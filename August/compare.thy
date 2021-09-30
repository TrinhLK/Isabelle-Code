theory compare
  imports Main 
"/Volumes/Setup/Isabelle/Isabelle-Code/August/libs_functions" "/Volumes/Setup/Isabelle/Isabelle-Code/August/bip" "/Volumes/Setup/Isabelle/Isabelle-Code/August/javabip"
begin
value "(\<forall>j \<in> set test_synchron. \<forall>u \<in> set j. \<forall>t \<in> set u. \<exists>l \<in> set (snd t).\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)" 
value "(\<forall>j \<in> set test_synchron. \<forall>u \<in> set j. \<forall>t \<in> set u. \<forall>l \<in> set (snd t). P (fst t) l \<longrightarrow> (\<forall>l1 \<in> set (snd t) - {l}. \<not>P (fst t) l1))"

lemma test_apart: "((\<forall>j \<in> set test_synchron. \<forall>u \<in> set j. \<forall>t \<in> set u. \<exists>l \<in> set (snd t).\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1)) \<Longrightarrow>
(\<forall>j \<in> set test_synchron. \<forall>u \<in> set j. \<forall>t \<in> set u. \<forall>l \<in> set (snd t). P (fst t) l \<longrightarrow> (\<forall>l1 \<in> set (snd t) - {l}. \<not>P (fst t) l1))"
  by blast

<<<<<<< Updated upstream
lemma compare_tool: "((broadcast_x \<longrightarrow> (isReg_y_x \<longrightarrow> (speak_y \<and> \<not>listen_y) \<or> (listen_y \<and> \<not>speak_y))) \<and> (broadcast_x \<longrightarrow> (isReg_Px_x \<and> speak_Px \<and> (differ_y1_Px \<and> isReg_y1_x \<longrightarrow> listen_y1)) \<or> (isReg_y_x \<longrightarrow> listen_y)) \<and> (speak_y \<longrightarrow> broadcast_x \<and> isReg_y_x) \<and> (listen_y \<longrightarrow> broadcast_x \<and> isReg_y_x))
\<Longrightarrow>
((\<not>broadcast_x \<or> \<not>isReg_y_x \<or> speak_y \<or> listen_y) 
\<and> (\<not>broadcast_x \<or> \<not>isReg_y_x \<or> \<not>listen_y \<or> listen_y) 
\<and> (\<not>broadcast_x \<or> \<not>isReg_y_x \<or> \<not>listen_y \<or> \<not>speak_y) 
\<and> (\<not>broadcast_x \<or> isReg_Px_x \<or> \<not>isReg_y_x \<or> listen_y) 
\<and> (\<not>broadcast_x \<or> speak_Px \<or> \<not>isReg_y_x \<or> listen_y) 
\<and> (\<not>broadcast_x \<or> \<not>differ_y1_Px \<or> \<not>isReg_y1_x \<or> listen_y1 \<or> \<not>isReg_y_x \<or> listen_y) 
\<and> (\<not>speak_y \<or> broadcast_x) 
\<and> (\<not>speak_y \<or> isReg_y_x) 
\<and> (\<not>listen_y \<or> broadcast_x) 
\<and> (\<not>listen_y \<or> isReg_y_x))
"
  by blast

lemma compare_tool_1: "(broadcast_x \<longrightarrow> speak_y)
\<Longrightarrow>
(\<not> broadcast_x \<or> speak_y) 
"
  by blast
=======
(*
lemma test_instance: "
(((P_5c_1 \<longrightarrow> (Q_1a_1 \<or> Q_1b_1) \<and> P_5d_1 \<and> \<not> Q_1a_2 \<and> \<not> Q_1a_3 \<and> \<not> Q_1b_2) \<or>
  (P_5d_1 \<longrightarrow> (Q_1a_1 \<or> Q_1b_1) \<and> P_5c_1 \<and> \<not> Q_1a_2 \<and> \<not> Q_1a_3 \<and> \<not> Q_1b_2)) \<or>
 ((P_5c_1 \<longrightarrow> (Q_1a_1 \<or> Q_1b_2) \<and> P_5d_1 \<and> \<not> Q_1a_2 \<and> \<not> Q_1a_3 \<and> \<not> Q_1b_1) \<or>
  (P_5d_1 \<longrightarrow> (Q_1a_1 \<or> Q_1b_2) \<and> P_5c_1 \<and> \<not> Q_1a_2 \<and> \<not> Q_1a_3 \<and> \<not> Q_1b_1)) \<or>
 ((P_5c_1 \<longrightarrow> (Q_1a_2 \<or> Q_1b_1) \<and> P_5d_1 \<and> \<not> Q_1a_1 \<and> \<not> Q_1a_3 \<and> \<not> Q_1b_2) \<or>
  (P_5d_1 \<longrightarrow> (Q_1a_2 \<or> Q_1b_1) \<and> P_5c_1 \<and> \<not> Q_1a_1 \<and> \<not> Q_1a_3 \<and> \<not> Q_1b_2)) \<or>
 ((P_5c_1 \<longrightarrow> (Q_1a_2 \<or> Q_1b_2) \<and> P_5d_1 \<and> \<not> Q_1a_1 \<and> \<not> Q_1a_3 \<and> \<not> Q_1b_1) \<or>
  (P_5d_1 \<longrightarrow> (Q_1a_2 \<or> Q_1b_2) \<and> P_5c_1 \<and> \<not> Q_1a_1 \<and> \<not> Q_1a_3 \<and> \<not> Q_1b_1)) \<or>
 ((P_5c_1 \<longrightarrow> (Q_1a_3 \<or> Q_1b_1) \<and> P_5d_1 \<and> \<not> Q_1a_1 \<and> \<not> Q_1a_2 \<and> \<not> Q_1b_2) \<or>
  (P_5d_1 \<longrightarrow> (Q_1a_3 \<or> Q_1b_1) \<and> P_5c_1 \<and> \<not> Q_1a_1 \<and> \<not> Q_1a_2 \<and> \<not> Q_1b_2)) \<or>
 (P_5c_1 \<longrightarrow> (Q_1a_3 \<or> Q_1b_2) \<and> P_5d_1 \<and> \<not> Q_1a_1 \<and> \<not> Q_1a_2 \<and> \<not> Q_1b_1) \<or>
 (P_5d_1 \<longrightarrow> (Q_1a_3 \<or> Q_1b_2) \<and> P_5c_1 \<and> \<not> Q_1a_1 \<and> \<not> Q_1a_2 \<and> \<not> Q_1b_1)) \<Longrightarrow>
(((P_5c_1 \<longrightarrow>
((Q_1a_1 \<and> \<not> Q_1a_2 \<and> \<not> Q_1a_3 \<or> Q_1a_2 \<and> \<not> Q_1a_1 \<and> \<not> Q_1a_3 \<or> Q_1a_3 \<and> \<not> Q_1a_1 \<and> \<not> Q_1a_2) \<or>
Q_1b_1 \<and> \<not> Q_1b_2 \<or> Q_1b_2 \<and> \<not> Q_1b_1) \<and>
P_5d_1) \<and>
(P_5d_1 \<longrightarrow>
((Q_1a_1 \<and> \<not> Q_1a_2 \<and> \<not> Q_1a_3 \<or> Q_1a_2 \<and> \<not> Q_1a_1 \<and> \<not> Q_1a_3 \<or> Q_1a_3 \<and> \<not> Q_1a_1 \<and> \<not> Q_1a_2) \<or>
Q_1b_1 \<and> \<not> Q_1b_2 \<or> Q_1b_2 \<and> \<not> Q_1b_1) \<and>
P_5c_1)) \<and>
(\<not> Q_1a_2 \<and> \<not> Q_1a_3 \<or> \<not> Q_1a_1 \<and> \<not> Q_1a_3 \<or> \<not> Q_1a_1 \<and> \<not> Q_1a_2) \<and> (\<not> Q_1b_2 \<or> \<not> Q_1b_1))"
*)
lemma test_inc_2:"(((P_5c_1 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_1 \<and> Q_3b2_1) \<and> P_5d_1 \<and> (\<not> P_5c_2 \<and> \<not> P_5c_3 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_2) \<or>
  (P_5d_1 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_1 \<and> Q_3b2_1) \<and> P_5c_1 \<and> (\<not> P_5c_2 \<and> \<not> P_5c_3 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_2)) \<or>
 ((P_5c_1 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_1 \<and> Q_3b2_2) \<and> P_5d_1 \<and> (\<not> P_5c_2 \<and> \<not> P_5c_3 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_1) \<or>
  (P_5d_1 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_1 \<and> Q_3b2_2) \<and> P_5c_1 \<and> (\<not> P_5c_2 \<and> \<not> P_5c_3 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_1)) \<or>
 ((P_5c_1 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_2 \<and> Q_3b2_1) \<and> P_5d_1 \<and> (\<not> P_5c_2 \<and> \<not> P_5c_3 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_2) \<or>
  (P_5d_1 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_2 \<and> Q_3b2_1) \<and> P_5c_1 \<and> (\<not> P_5c_2 \<and> \<not> P_5c_3 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_2)) \<or>
 ((P_5c_1 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_2 \<and> Q_3b2_2) \<and> P_5d_1 \<and> (\<not> P_5c_2 \<and> \<not> P_5c_3 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_1) \<or>
  (P_5d_1 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_2 \<and> Q_3b2_2) \<and> P_5c_1 \<and> (\<not> P_5c_2 \<and> \<not> P_5c_3 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_1)) \<or>
 ((P_5c_1 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_1 \<and> Q_3b2_1) \<and> P_5d_1 \<and> (\<not> P_5c_2 \<and> \<not> P_5c_3 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_2) \<or>
  (P_5d_1 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_1 \<and> Q_3b2_1) \<and> P_5c_1 \<and> (\<not> P_5c_2 \<and> \<not> P_5c_3 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_2)) \<or>
 ((P_5c_1 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_1 \<and> Q_3b2_2) \<and> P_5d_1 \<and> (\<not> P_5c_2 \<and> \<not> P_5c_3 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_1) \<or>
  (P_5d_1 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_1 \<and> Q_3b2_2) \<and> P_5c_1 \<and> (\<not> P_5c_2 \<and> \<not> P_5c_3 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_1)) \<or>
 ((P_5c_1 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_2 \<and> Q_3b2_1) \<and> P_5d_1 \<and> (\<not> P_5c_2 \<and> \<not> P_5c_3 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_2) \<or>
  (P_5d_1 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_2 \<and> Q_3b2_1) \<and> P_5c_1 \<and> (\<not> P_5c_2 \<and> \<not> P_5c_3 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_2)) \<or>
 ((P_5c_1 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_2 \<and> Q_3b2_2) \<and> P_5d_1 \<and> (\<not> P_5c_2 \<and> \<not> P_5c_3 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_1) \<or>
  (P_5d_1 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_2 \<and> Q_3b2_2) \<and> P_5c_1 \<and> (\<not> P_5c_2 \<and> \<not> P_5c_3 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_1)) \<or>
 ((P_5c_1 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_1 \<and> Q_3b2_1) \<and> P_5d_2 \<and> (\<not> P_5c_2 \<and> \<not> P_5c_3 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_2) \<or>
  (P_5d_2 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_1 \<and> Q_3b2_1) \<and> P_5c_1 \<and> (\<not> P_5c_2 \<and> \<not> P_5c_3 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_2)) \<or>
 ((P_5c_1 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_1 \<and> Q_3b2_2) \<and> P_5d_2 \<and> (\<not> P_5c_2 \<and> \<not> P_5c_3 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_1) \<or>
  (P_5d_2 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_1 \<and> Q_3b2_2) \<and> P_5c_1 \<and> (\<not> P_5c_2 \<and> \<not> P_5c_3 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_1)) \<or>
 ((P_5c_1 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_2 \<and> Q_3b2_1) \<and> P_5d_2 \<and> (\<not> P_5c_2 \<and> \<not> P_5c_3 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_2) \<or>
  (P_5d_2 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_2 \<and> Q_3b2_1) \<and> P_5c_1 \<and> (\<not> P_5c_2 \<and> \<not> P_5c_3 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_2)) \<or>
 ((P_5c_1 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_2 \<and> Q_3b2_2) \<and> P_5d_2 \<and> (\<not> P_5c_2 \<and> \<not> P_5c_3 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_1) \<or>
  (P_5d_2 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_2 \<and> Q_3b2_2) \<and> P_5c_1 \<and> (\<not> P_5c_2 \<and> \<not> P_5c_3 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_1)) \<or>
 ((P_5c_1 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_1 \<and> Q_3b2_1) \<and> P_5d_2 \<and> (\<not> P_5c_2 \<and> \<not> P_5c_3 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_2) \<or>
  (P_5d_2 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_1 \<and> Q_3b2_1) \<and> P_5c_1 \<and> (\<not> P_5c_2 \<and> \<not> P_5c_3 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_2)) \<or>
 ((P_5c_1 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_1 \<and> Q_3b2_2) \<and> P_5d_2 \<and> (\<not> P_5c_2 \<and> \<not> P_5c_3 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_1) \<or>
  (P_5d_2 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_1 \<and> Q_3b2_2) \<and> P_5c_1 \<and> (\<not> P_5c_2 \<and> \<not> P_5c_3 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_1)) \<or>
 ((P_5c_1 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_2 \<and> Q_3b2_1) \<and> P_5d_2 \<and> (\<not> P_5c_2 \<and> \<not> P_5c_3 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_2) \<or>
  (P_5d_2 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_2 \<and> Q_3b2_1) \<and> P_5c_1 \<and> (\<not> P_5c_2 \<and> \<not> P_5c_3 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_2)) \<or>
 ((P_5c_1 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_2 \<and> Q_3b2_2) \<and> P_5d_2 \<and> (\<not> P_5c_2 \<and> \<not> P_5c_3 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_1) \<or>
  (P_5d_2 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_2 \<and> Q_3b2_2) \<and> P_5c_1 \<and> (\<not> P_5c_2 \<and> \<not> P_5c_3 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_1)) \<or>
 ((P_5c_2 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_1 \<and> Q_3b2_1) \<and> P_5d_1 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_3 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_2) \<or>
  (P_5d_1 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_1 \<and> Q_3b2_1) \<and> P_5c_2 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_3 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_2)) \<or>
 ((P_5c_2 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_1 \<and> Q_3b2_2) \<and> P_5d_1 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_3 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_1) \<or>
  (P_5d_1 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_1 \<and> Q_3b2_2) \<and> P_5c_2 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_3 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_1)) \<or>
 ((P_5c_2 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_2 \<and> Q_3b2_1) \<and> P_5d_1 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_3 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_2) \<or>
  (P_5d_1 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_2 \<and> Q_3b2_1) \<and> P_5c_2 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_3 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_2)) \<or>
 ((P_5c_2 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_2 \<and> Q_3b2_2) \<and> P_5d_1 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_3 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_1) \<or>
  (P_5d_1 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_2 \<and> Q_3b2_2) \<and> P_5c_2 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_3 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_1)) \<or>
 ((P_5c_2 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_1 \<and> Q_3b2_1) \<and> P_5d_1 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_3 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_2) \<or>
  (P_5d_1 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_1 \<and> Q_3b2_1) \<and> P_5c_2 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_3 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_2)) \<or>
 ((P_5c_2 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_1 \<and> Q_3b2_2) \<and> P_5d_1 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_3 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_1) \<or>
  (P_5d_1 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_1 \<and> Q_3b2_2) \<and> P_5c_2 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_3 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_1)) \<or>
 ((P_5c_2 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_2 \<and> Q_3b2_1) \<and> P_5d_1 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_3 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_2) \<or>
  (P_5d_1 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_2 \<and> Q_3b2_1) \<and> P_5c_2 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_3 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_2)) \<or>
 ((P_5c_2 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_2 \<and> Q_3b2_2) \<and> P_5d_1 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_3 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_1) \<or>
  (P_5d_1 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_2 \<and> Q_3b2_2) \<and> P_5c_2 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_3 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_1)) \<or>
 ((P_5c_2 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_1 \<and> Q_3b2_1) \<and> P_5d_2 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_3 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_2) \<or>
  (P_5d_2 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_1 \<and> Q_3b2_1) \<and> P_5c_2 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_3 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_2)) \<or>
 ((P_5c_2 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_1 \<and> Q_3b2_2) \<and> P_5d_2 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_3 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_1) \<or>
  (P_5d_2 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_1 \<and> Q_3b2_2) \<and> P_5c_2 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_3 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_1)) \<or>
 ((P_5c_2 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_2 \<and> Q_3b2_1) \<and> P_5d_2 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_3 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_2) \<or>
  (P_5d_2 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_2 \<and> Q_3b2_1) \<and> P_5c_2 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_3 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_2)) \<or>
 ((P_5c_2 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_2 \<and> Q_3b2_2) \<and> P_5d_2 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_3 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_1) \<or>
  (P_5d_2 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_2 \<and> Q_3b2_2) \<and> P_5c_2 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_3 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_1)) \<or>
 ((P_5c_2 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_1 \<and> Q_3b2_1) \<and> P_5d_2 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_3 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_2) \<or>
  (P_5d_2 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_1 \<and> Q_3b2_1) \<and> P_5c_2 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_3 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_2)) \<or>
 ((P_5c_2 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_1 \<and> Q_3b2_2) \<and> P_5d_2 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_3 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_1) \<or>
  (P_5d_2 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_1 \<and> Q_3b2_2) \<and> P_5c_2 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_3 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_1)) \<or>
 ((P_5c_2 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_2 \<and> Q_3b2_1) \<and> P_5d_2 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_3 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_2) \<or>
  (P_5d_2 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_2 \<and> Q_3b2_1) \<and> P_5c_2 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_3 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_2)) \<or>
 ((P_5c_2 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_2 \<and> Q_3b2_2) \<and> P_5d_2 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_3 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_1) \<or>
  (P_5d_2 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_2 \<and> Q_3b2_2) \<and> P_5c_2 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_3 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_1)) \<or>
 ((P_5c_3 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_1 \<and> Q_3b2_1) \<and> P_5d_1 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_2 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_2) \<or>
  (P_5d_1 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_1 \<and> Q_3b2_1) \<and> P_5c_3 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_2 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_2)) \<or>
 ((P_5c_3 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_1 \<and> Q_3b2_2) \<and> P_5d_1 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_2 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_1) \<or>
  (P_5d_1 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_1 \<and> Q_3b2_2) \<and> P_5c_3 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_2 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_1)) \<or>
 ((P_5c_3 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_2 \<and> Q_3b2_1) \<and> P_5d_1 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_2 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_2) \<or>
  (P_5d_1 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_2 \<and> Q_3b2_1) \<and> P_5c_3 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_2 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_2)) \<or>
 ((P_5c_3 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_2 \<and> Q_3b2_2) \<and> P_5d_1 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_2 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_1) \<or>
  (P_5d_1 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_2 \<and> Q_3b2_2) \<and> P_5c_3 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_2 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_1)) \<or>
 ((P_5c_3 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_1 \<and> Q_3b2_1) \<and> P_5d_1 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_2 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_2) \<or>
  (P_5d_1 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_1 \<and> Q_3b2_1) \<and> P_5c_3 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_2 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_2)) \<or>
 ((P_5c_3 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_1 \<and> Q_3b2_2) \<and> P_5d_1 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_2 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_1) \<or>
  (P_5d_1 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_1 \<and> Q_3b2_2) \<and> P_5c_3 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_2 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_1)) \<or>
 ((P_5c_3 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_2 \<and> Q_3b2_1) \<and> P_5d_1 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_2 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_2) \<or>
  (P_5d_1 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_2 \<and> Q_3b2_1) \<and> P_5c_3 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_2 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_2)) \<or>
 ((P_5c_3 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_2 \<and> Q_3b2_2) \<and> P_5d_1 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_2 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_1) \<or>
  (P_5d_1 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_2 \<and> Q_3b2_2) \<and> P_5c_3 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_2 \<and> \<not> P_5d_2) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_1)) \<or>
 ((P_5c_3 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_1 \<and> Q_3b2_1) \<and> P_5d_2 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_2 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_2) \<or>
  (P_5d_2 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_1 \<and> Q_3b2_1) \<and> P_5c_3 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_2 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_2)) \<or>
 ((P_5c_3 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_1 \<and> Q_3b2_2) \<and> P_5d_2 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_2 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_1) \<or>
  (P_5d_2 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_1 \<and> Q_3b2_2) \<and> P_5c_3 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_2 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_1)) \<or>
 ((P_5c_3 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_2 \<and> Q_3b2_1) \<and> P_5d_2 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_2 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_2) \<or>
  (P_5d_2 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_2 \<and> Q_3b2_1) \<and> P_5c_3 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_2 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_2)) \<or>
 ((P_5c_3 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_2 \<and> Q_3b2_2) \<and> P_5d_2 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_2 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_1) \<or>
  (P_5d_2 \<longrightarrow> (Q_3a_1 \<or> Q_3b1_2 \<and> Q_3b2_2) \<and> P_5c_3 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_2 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_2 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_1)) \<or>
 ((P_5c_3 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_1 \<and> Q_3b2_1) \<and> P_5d_2 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_2 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_2) \<or>
  (P_5d_2 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_1 \<and> Q_3b2_1) \<and> P_5c_3 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_2 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_2)) \<or>
 ((P_5c_3 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_1 \<and> Q_3b2_2) \<and> P_5d_2 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_2 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_1) \<or>
  (P_5d_2 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_1 \<and> Q_3b2_2) \<and> P_5c_3 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_2 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_2 \<and> \<not> Q_3b2_1)) \<or>
 ((P_5c_3 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_2 \<and> Q_3b2_1) \<and> P_5d_2 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_2 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_2) \<or>
  (P_5d_2 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_2 \<and> Q_3b2_1) \<and> P_5c_3 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_2 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_2)) \<or>
 (P_5c_3 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_2 \<and> Q_3b2_2) \<and> P_5d_2 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_2 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_1) \<or>
 (P_5d_2 \<longrightarrow> (Q_3a_2 \<or> Q_3b1_2 \<and> Q_3b2_2) \<and> P_5c_3 \<and> (\<not> P_5c_1 \<and> \<not> P_5c_2 \<and> \<not> P_5d_1) \<and> \<not> Q_3a_1 \<and> \<not> Q_3b1_1 \<and> \<not> Q_3b2_1)) \<Longrightarrow>
((((P_5c_1 \<longrightarrow>
    ((Q_3a_1 \<and> \<not> Q_3a_2 \<or> Q_3a_2 \<and> \<not> Q_3a_1) \<or>
     (Q_3b1_1 \<and> \<not> Q_3b1_2) \<and> Q_3b2_1 \<and> \<not> Q_3b2_2 \<or>
     (Q_3b1_1 \<and> \<not> Q_3b1_2) \<and> Q_3b2_2 \<and> \<not> Q_3b2_1 \<or>
     (Q_3b1_2 \<and> \<not> Q_3b1_1) \<and> Q_3b2_1 \<and> \<not> Q_3b2_2 \<or> (Q_3b1_2 \<and> \<not> Q_3b1_1) \<and> Q_3b2_2 \<and> \<not> Q_3b2_1) \<and>
    (P_5d_1 \<and> \<not> P_5d_2 \<or> P_5d_2 \<and> \<not> P_5d_1)) \<and>
   (P_5c_2 \<longrightarrow>
    ((Q_3a_1 \<and> \<not> Q_3a_2 \<or> Q_3a_2 \<and> \<not> Q_3a_1) \<or>
     (Q_3b1_1 \<and> \<not> Q_3b1_2) \<and> Q_3b2_1 \<and> \<not> Q_3b2_2 \<or>
     (Q_3b1_1 \<and> \<not> Q_3b1_2) \<and> Q_3b2_2 \<and> \<not> Q_3b2_1 \<or>
     (Q_3b1_2 \<and> \<not> Q_3b1_1) \<and> Q_3b2_1 \<and> \<not> Q_3b2_2 \<or> (Q_3b1_2 \<and> \<not> Q_3b1_1) \<and> Q_3b2_2 \<and> \<not> Q_3b2_1) \<and>
    (P_5d_1 \<and> \<not> P_5d_2 \<or> P_5d_2 \<and> \<not> P_5d_1)) \<and>
   (P_5c_3 \<longrightarrow>
    ((Q_3a_1 \<and> \<not> Q_3a_2 \<or> Q_3a_2 \<and> \<not> Q_3a_1) \<or>
     (Q_3b1_1 \<and> \<not> Q_3b1_2) \<and> Q_3b2_1 \<and> \<not> Q_3b2_2 \<or>
     (Q_3b1_1 \<and> \<not> Q_3b1_2) \<and> Q_3b2_2 \<and> \<not> Q_3b2_1 \<or>
     (Q_3b1_2 \<and> \<not> Q_3b1_1) \<and> Q_3b2_1 \<and> \<not> Q_3b2_2 \<or> (Q_3b1_2 \<and> \<not> Q_3b1_1) \<and> Q_3b2_2 \<and> \<not> Q_3b2_1) \<and>
    (P_5d_1 \<and> \<not> P_5d_2 \<or> P_5d_2 \<and> \<not> P_5d_1))) \<and>
  (P_5d_1 \<longrightarrow>
   ((Q_3a_1 \<and> \<not> Q_3a_2 \<or> Q_3a_2 \<and> \<not> Q_3a_1) \<or>
    (Q_3b1_1 \<and> \<not> Q_3b1_2) \<and> Q_3b2_1 \<and> \<not> Q_3b2_2 \<or>
    (Q_3b1_1 \<and> \<not> Q_3b1_2) \<and> Q_3b2_2 \<and> \<not> Q_3b2_1 \<or>
    (Q_3b1_2 \<and> \<not> Q_3b1_1) \<and> Q_3b2_1 \<and> \<not> Q_3b2_2 \<or> (Q_3b1_2 \<and> \<not> Q_3b1_1) \<and> Q_3b2_2 \<and> \<not> Q_3b2_1) \<and>
   (P_5c_1 \<and> \<not> P_5c_2 \<and> \<not> P_5c_3 \<or> P_5c_2 \<and> \<not> P_5c_1 \<and> \<not> P_5c_3 \<or> P_5c_3 \<and> \<not> P_5c_1 \<and> \<not> P_5c_2)) \<and>
  (P_5d_2 \<longrightarrow>
   ((Q_3a_1 \<and> \<not> Q_3a_2 \<or> Q_3a_2 \<and> \<not> Q_3a_1) \<or>
    (Q_3b1_1 \<and> \<not> Q_3b1_2) \<and> Q_3b2_1 \<and> \<not> Q_3b2_2 \<or>
    (Q_3b1_1 \<and> \<not> Q_3b1_2) \<and> Q_3b2_2 \<and> \<not> Q_3b2_1 \<or>
    (Q_3b1_2 \<and> \<not> Q_3b1_1) \<and> Q_3b2_1 \<and> \<not> Q_3b2_2 \<or> (Q_3b1_2 \<and> \<not> Q_3b1_1) \<and> Q_3b2_2 \<and> \<not> Q_3b2_1) \<and>
   (P_5c_1 \<and> \<not> P_5c_2 \<and> \<not> P_5c_3 \<or> P_5c_2 \<and> \<not> P_5c_1 \<and> \<not> P_5c_3 \<or> P_5c_3 \<and> \<not> P_5c_1 \<and> \<not> P_5c_2))) \<and>
 ((\<not> P_5c_2 \<and> \<not> P_5c_3 \<or> \<not> P_5c_1 \<and> \<not> P_5c_3 \<or> \<not> P_5c_1 \<and> \<not> P_5c_2) \<and> (\<not> P_5d_2 \<or> \<not> P_5d_1)) \<and>
 (\<not> Q_3a_2 \<or> \<not> Q_3a_1) \<and> (\<not> Q_3b1_2 \<or> \<not> Q_3b1_1) \<and> (\<not> Q_3b2_2 \<or> \<not> Q_3b2_1))
"
>>>>>>> Stashed changes

notepad
begin
  have"
(\<exists>connector \<in> set BIP_Connector_2.\<exists>sync\<in>set (fst connector).(P (fst sync) (snd sync) \<longrightarrow> 
((\<exists>trig\<in>set (snd connector).\<forall>elm\<in>set trig. Q (fst elm) (snd elm)) 
  \<and> (\<forall>sync1\<in>set (fst connector) - {sync}. P (fst sync1) (snd sync1))
  \<and> (\<forall>rs \<in> remaining_pairs (all_pairs test_synchron) (fst connector). \<not>P (fst rs) (snd rs))
  \<and> (\<forall>rt \<in> remaining_pairs (all_pairs test_triggers) (concat (snd connector)). \<not>Q (fst rt) (snd rt)))
)) \<Longrightarrow>
((\<forall>connector\<in>set JavaBIP_Connector_2.\<forall>sync_list\<in>set (fst connector).\<forall>sync\<in>set sync_list. (P (fst sync) (snd sync) \<longrightarrow> 
      ((\<exists>trig_list\<in>set(snd connector).\<exists>trig\<in>set trig_list. \<forall>t_elm\<in>set trig. (Q (fst t_elm) (snd t_elm)
      \<and> (\<forall>h \<in> set (lookup_3 (fst t_elm) test_triggers) - {snd t_elm}. \<not>Q (fst t_elm) h)))
      \<and> (\<forall>sync_1\<in>set(fst connector)-{sync_list}.\<exists>s_elm_1\<in>set(sync_1). P (fst s_elm_1) (snd s_elm_1)
      \<and> (\<forall>l \<in> set (lookup_3 (fst s_elm_1) test_synchron) - {snd s_elm_1}. \<not>P (fst s_elm_1) l))
    )
))
\<and> (\<forall>j \<in> set test_synchron. \<forall>u \<in> set j. \<forall>t \<in> set u. \<forall>l \<in> set (snd t).(P (fst t) l \<longrightarrow> (\<forall>l1 \<in> set (snd t) - {l}. \<not>P (fst t) l1)))
\<and> (\<forall>i \<in> set test_triggers. \<forall>v \<in> set i. \<forall>k \<in> set v. \<forall>h \<in> set (snd k).(Q (fst k) h \<longrightarrow> (\<forall>h1 \<in> set (snd k) - {h}. \<not>Q (fst k) h1))))
"
    unfolding test_synchron_def test_triggers_def JavaBIP_Connector_2_def BIP_Connector_2_def
    sledgehammer
(*
  proof (rule classical)
    assume "\<not> ?thesis"
    then show ?thesis by force
  qed
*)
end

<<<<<<< Updated upstream
lemma "((speak_y \<longrightarrow> broadcast_x \<and> isReg_y_x \<and> \<not>listen_y \<and> (listen_y1 \<longrightarrow> broadcast_x \<and> differ_y1_y \<and> isReg_y1_x)) \<and> (listen_y \<longrightarrow> broadcast_x \<and> isReg_y_x \<and> \<not>speak_y \<and> (listen_y1 \<longrightarrow> broadcast_x \<and> differ_y1_y \<and> isReg_y1_x)))
\<Longrightarrow>
((\<not>speak_y \<or> broadcast_x) 
\<and> (\<not>speak_y \<or> isReg_y_x) 
\<and> (\<not>speak_y \<or> \<not>listen_y) 
\<and> (\<not>speak_y \<or> \<not>listen_y1 \<or> broadcast_x) 
\<and> (\<not>speak_y \<or> \<not>listen_y1 \<or> differ_y1_y) 
\<and> (\<not>speak_y \<or> \<not>listen_y1 \<or> isReg_y1_x) 
\<and> (\<not>listen_y \<or> broadcast_x) 
\<and> (\<not>listen_y \<or> isReg_y_x) 
\<and> (\<not>listen_y \<or> \<not>speak_y) 
\<and> (\<not>listen_y \<or> \<not>listen_y1 \<or> broadcast_x) 
\<and> (\<not>listen_y \<or> \<not>listen_y1 \<or> differ_y1_y) 
\<and> (\<not>listen_y \<or> \<not>listen_y1 \<or> isReg_y1_x))"
  by blast

lemma "((P_4_1 \<longrightarrow> (Q_1_1 \<or> Q_2_1) \<and> (\<not>P_4_2 \<and> \<not>P_4_3) \<and> \<not>Q_1_2 \<and> \<not>Q_1_3 \<and> \<not>Q_2_2) \<or>
 (P_4_1 \<longrightarrow> (Q_1_1 \<or> Q_2_2) \<and> (\<not>P_4_2 \<and> \<not>P_4_3) \<and> \<not>Q_1_2 \<and> \<not>Q_1_3 \<and> \<not>Q_2_1) \<or>
 (P_4_1 \<longrightarrow> (Q_1_2 \<or> Q_2_1) \<and> (\<not>P_4_2 \<and> \<not>P_4_3) \<and> \<not>Q_1_1 \<and> \<not>Q_1_3 \<and> \<not>Q_2_2) \<or>
 (P_4_1 \<longrightarrow> (Q_1_2 \<or> Q_2_2) \<and> (\<not>P_4_2 \<and> \<not>P_4_3) \<and> \<not>Q_1_1 \<and> \<not>Q_1_3 \<and> \<not>Q_2_1) \<or>
 (P_4_1 \<longrightarrow> (Q_1_3 \<or> Q_2_1) \<and> (\<not>P_4_2 \<and> \<not>P_4_3) \<and> \<not>Q_1_1 \<and> \<not>Q_1_2 \<and> \<not>Q_2_2) \<or>
 (P_4_1 \<longrightarrow> (Q_1_3 \<or> Q_2_2) \<and> (\<not>P_4_2 \<and> \<not>P_4_3) \<and> \<not>Q_1_1 \<and> \<not>Q_1_2 \<and> \<not>Q_2_1)) \<and>
 ((P_4_2 \<longrightarrow> (Q_1_1 \<or> Q_2_1) \<and> (\<not>P_4_1 \<and> \<not>P_4_3) \<and> \<not>Q_1_2 \<and> \<not>Q_1_3 \<and> \<not>Q_2_2) \<or>
 (P_4_2 \<longrightarrow> (Q_1_1 \<or> Q_2_2) \<and> (\<not>P_4_1 \<and> \<not>P_4_3) \<and> \<not>Q_1_2 \<and> \<not>Q_1_3 \<and> \<not>Q_2_1) \<or>
 (P_4_2 \<longrightarrow> (Q_1_2 \<or> Q_2_1) \<and> (\<not>P_4_1 \<and> \<not>P_4_3) \<and> \<not>Q_1_1 \<and> \<not>Q_1_3 \<and> \<not>Q_2_2) \<or>
 (P_4_2 \<longrightarrow> (Q_1_2 \<or> Q_2_2) \<and> (\<not>P_4_1 \<and> \<not>P_4_3) \<and> \<not>Q_1_1 \<and> \<not>Q_1_3 \<and> \<not>Q_2_1) \<or>
 (P_4_2 \<longrightarrow> (Q_1_3 \<or> Q_2_1) \<and> (\<not>P_4_1 \<and> \<not>P_4_3) \<and> \<not>Q_1_1 \<and> \<not>Q_1_2 \<and> \<not>Q_2_2) \<or>
 (P_4_2 \<longrightarrow> (Q_1_3 \<or> Q_2_2) \<and> (\<not>P_4_1 \<and> \<not>P_4_3) \<and> \<not>Q_1_1 \<and> \<not>Q_1_2 \<and> \<not>Q_2_1)) \<and>
 ((P_4_3 \<longrightarrow> (Q_1_1 \<or> Q_2_1) \<and> (\<not>P_4_1 \<and> \<not>P_4_2) \<and> \<not>Q_1_2 \<and> \<not>Q_1_3 \<and> \<not>Q_2_2) \<or>
 (P_4_3 \<longrightarrow> (Q_1_1 \<or> Q_2_2) \<and> (\<not>P_4_1 \<and> \<not>P_4_2) \<and> \<not>Q_1_2 \<and> \<not>Q_1_3 \<and> \<not>Q_2_1) \<or>
 (P_4_3 \<longrightarrow> (Q_1_2 \<or> Q_2_1) \<and> (\<not>P_4_1 \<and> \<not>P_4_2) \<and> \<not>Q_1_1 \<and> \<not>Q_1_3 \<and> \<not>Q_2_2) \<or>
 (P_4_3 \<longrightarrow> (Q_1_2 \<or> Q_2_2) \<and> (\<not>P_4_1 \<and> \<not>P_4_2) \<and> \<not>Q_1_1 \<and> \<not>Q_1_3 \<and> \<not>Q_2_1) \<or>
 (P_4_3 \<longrightarrow> (Q_1_3 \<or> Q_2_1) \<and> (\<not>P_4_1 \<and> \<not>P_4_2) \<and> \<not>Q_1_1 \<and> \<not>Q_1_2 \<and> \<not>Q_2_2) \<or>
 (P_4_3 \<longrightarrow> (Q_1_3 \<or> Q_2_2) \<and> (\<not>P_4_1 \<and> \<not>P_4_2) \<and> \<not>Q_1_1 \<and> \<not>Q_1_2 \<and> \<not>Q_2_1))
\<Longrightarrow>
(
  (P_4_1 \<longrightarrow>  (Q_1_1 \<and> \<not>Q_1_2 \<and> \<not>Q_1_3 \<or> Q_1_2 \<and> \<not>Q_1_1 \<and> \<not>Q_1_3 \<or> Q_1_3 \<and> \<not>Q_1_1 \<and> \<not>Q_1_2) 
	\<or> Q_2_1 \<and> \<not>Q_2_2 \<or> Q_2_2 \<and> \<not>Q_2_1) \<and>
  (P_4_2 \<longrightarrow>  (Q_1_1 \<and> \<not>Q_1_2 \<and> \<not>Q_1_3 \<or> Q_1_2 \<and> \<not>Q_1_1 \<and> \<not>Q_1_3 \<or> Q_1_3 \<and> \<not>Q_1_1 \<and> \<not>Q_1_2) 
  	\<or> Q_2_1 \<and> \<not>Q_2_2 \<or> Q_2_2 \<and> \<not>Q_2_1) \<and>
  (P_4_3 \<longrightarrow>  (Q_1_1 \<and> \<not>Q_1_2 \<and> \<not>Q_1_3 \<or> Q_1_2 \<and> \<not>Q_1_1 \<and> \<not>Q_1_3 \<or> Q_1_3 \<and> \<not>Q_1_1 \<and> \<not>Q_1_2) 
  	\<or> Q_2_1 \<and> \<not>Q_2_2 \<or> Q_2_2 \<and> \<not>Q_2_1) \<and>
 (P_4_1 \<longrightarrow> \<not>P_4_2 \<and> \<not>P_4_3) \<and> (P_4_2 \<longrightarrow> \<not>P_4_1 \<and> \<not>P_4_3) \<and> (P_4_3 \<longrightarrow> \<not>P_4_1 \<and> \<not>P_4_2) \<and>
 (Q_1_1 \<longrightarrow> \<not>Q_1_2 \<and> \<not>Q_1_3) \<and> (Q_1_2 \<longrightarrow> \<not>Q_1_1 \<and> \<not>Q_1_3) \<and> (Q_1_3 \<longrightarrow> \<not>Q_1_1 \<and> \<not>Q_1_2) \<and>
 (Q_2_1 \<longrightarrow> \<not>Q_2_2) \<and> (Q_2_2 \<longrightarrow> \<not>Q_2_1)
)"
  by blast
  
value "((True \<longrightarrow> (False \<or> False) \<and> (\<not>False \<and> \<not>False) \<and> \<not>False \<and> \<not>False \<and> \<not>False) \<or>
 (True \<longrightarrow> (False \<or> False) \<and> (\<not>False \<and> \<not>False) \<and> \<not>False \<and> \<not>False \<and> \<not>False) \<or>
 (True \<longrightarrow> (False \<or> False) \<and> (\<not>False \<and> \<not>False) \<and> \<not>False \<and> \<not>False \<and> \<not>False) \<or>
 (True \<longrightarrow> (False \<or> False) \<and> (\<not>False \<and> \<not>False) \<and> \<not>False \<and> \<not>False \<and> \<not>False) \<or>
 (True \<longrightarrow> (False \<or> False) \<and> (\<not>False \<and> \<not>False) \<and> \<not>False \<and> \<not>False \<and> \<not>False) \<or>
 (True \<longrightarrow> (False \<or> False) \<and> (\<not>False \<and> \<not>False) \<and> \<not>False \<and> \<not>False \<and> \<not>False) \<or>
 (False \<longrightarrow> (False \<or> False) \<and> (\<not>True \<and> \<not>False) \<and> \<not>False \<and> \<not>False \<and> \<not>False) \<or>
 (False \<longrightarrow> (False \<or> False) \<and> (\<not>True \<and> \<not>False) \<and> \<not>False \<and> \<not>False \<and> \<not>False) \<or>
 (False \<longrightarrow> (False \<or> False) \<and> (\<not>True \<and> \<not>False) \<and> \<not>False \<and> \<not>False \<and> \<not>False) \<or>
 (False \<longrightarrow> (False \<or> False) \<and> (\<not>True \<and> \<not>False) \<and> \<not>False \<and> \<not>False \<and> \<not>False) \<or>
 (False \<longrightarrow> (False \<or> False) \<and> (\<not>True \<and> \<not>False) \<and> \<not>False \<and> \<not>False \<and> \<not>False) \<or>
 (False \<longrightarrow> (False \<or> False) \<and> (\<not>True \<and> \<not>False) \<and> \<not>False \<and> \<not>False \<and> \<not>False) \<or>
 (False \<longrightarrow> (False \<or> False) \<and> (\<not>True \<and> \<not>False) \<and> \<not>False \<and> \<not>False \<and> \<not>False) \<or>
 (False \<longrightarrow> (False \<or> False) \<and> (\<not>True \<and> \<not>False) \<and> \<not>False \<and> \<not>False \<and> \<not>False) \<or>
 (False \<longrightarrow> (False \<or> False) \<and> (\<not>True \<and> \<not>False) \<and> \<not>False \<and> \<not>False \<and> \<not>False) \<or>
 (False \<longrightarrow> (False \<or> False) \<and> (\<not>True \<and> \<not>False) \<and> \<not>False \<and> \<not>False \<and> \<not>False) \<or>
 (False \<longrightarrow> (False \<or> False) \<and> (\<not>True \<and> \<not>False) \<and> \<not>False \<and> \<not>False \<and> \<not>False) \<or>
 (False \<longrightarrow> (False \<or> False) \<and> (\<not>True \<and> \<not>False) \<and> \<not>False \<and> \<not>False \<and> \<not>False))"

value "(
  (True \<longrightarrow>  (False \<and> \<not>False \<and> \<not>False \<or> False \<and> \<not>False \<and> \<not>False \<or> False \<and> \<not>False \<and> \<not>False) 
	\<or> False \<and> \<not>False \<or> False \<and> \<not>False) \<and>
  (False \<longrightarrow>  (False \<and> \<not>False \<and> \<not>False \<or> False \<and> \<not>False \<and> \<not>False \<or> False \<and> \<not>False \<and> \<not>False) 
  	\<or> False \<and> \<not>False \<or> False \<and> \<not>False) \<and>
  (False \<longrightarrow>  (False \<and> \<not>False \<and> \<not>False \<or> False \<and> \<not>False \<and> \<not>False \<or> False \<and> \<not>False \<and> \<not>False) 
  	\<or> False \<and> \<not>False \<or> False \<and> \<not>False) \<and>
 (True \<longrightarrow> \<not>False \<and> \<not>False) \<and> (False \<longrightarrow> \<not>True \<and> \<not>False) \<and> (False \<longrightarrow> \<not>True \<and> \<not>False) \<and>
 (False \<longrightarrow> \<not>False \<and> \<not>False) \<and> (False \<longrightarrow> \<not>False \<and> \<not>False) \<and> (False \<longrightarrow> \<not>False \<and> \<not>False) \<and>
 (False \<longrightarrow> \<not>False) \<and> (False \<longrightarrow> \<not>False)
)"

lemma "((speak_y \<longrightarrow> broadcast_x \<and> isReg_y_x \<and> \<not>listen_y) 
\<and> (listen_y \<longrightarrow> broadcast_x \<and> isReg_y_x \<and> \<not>speak_y) 
\<and> (
	listen_y1 \<longrightarrow> broadcast_x \<and> differ_y1_Px \<and> isReg_y1_x \<and> isReg_Px_x \<and> (speak_Px \<or> listen_Px)
))
\<Longrightarrow>
((\<not>speak_y \<or> broadcast_x) 
\<and> (\<not>speak_y \<or> isReg_y_x) 
\<and> (\<not>speak_y \<or> \<not>listen_y) 
\<and> (\<not>listen_y \<or> broadcast_x) 
\<and> (\<not>listen_y \<or> isReg_y_x) 
\<and> (\<not>listen_y \<or> \<not>speak_y) 
\<and> (\<not>listen_y1 \<or> broadcast_x) 
\<and> (\<not>listen_y1 \<or> differ_y1_Px) 
\<and> (\<not>listen_y1 \<or> isReg_y1_x) 
\<and> (\<not>listen_y1 \<or> isReg_Px_x) 
\<and> (\<not>listen_y1 \<or> speak_Px \<or> listen_Px))"
  by blast

=======
locale geometry = 
  fixes parallel :: "'line \<Rightarrow> 'line \<Rightarrow> bool"
  and intersect :: "'line \<Rightarrow> 'line \<Rightarrow> bool"
  and angle :: "'line \<Rightarrow> 'line \<Rightarrow> nat" 
  assumes axiom1: "parallel l1 l2 \<Longrightarrow> angle l1 l2 = 0"
  and axiom2: "intersect l1 l2 \<Longrightarrow> \<not> (angle l1 l2 = 0)"
begin
lemma parallel_not_intersect: "parallel l1 l2 \<Longrightarrow> \<not> intersect l1 l2"
  using axiom1 axiom2 by blast
end

lemma test_2: "(((P_5c_1 \<longrightarrow> (Q_1a_1 \<or> Q_1b_1) \<and> P_5d_1 \<and> \<not>Q_1a_2 \<and> \<not>Q_1a_3 \<and> \<not>Q_1b_2) \<or>
  (P_5d_1 \<longrightarrow> (Q_1a_1 \<or> Q_1b_1) \<and> P_5c_1 \<and> \<not>Q_1a_2 \<and> \<not>Q_1a_3 \<and> \<not>Q_1b_2)) \<or>
 ((P_5c_1 \<longrightarrow> (Q_1a_1 \<or> Q_1b_2) \<and> P_5d_1 \<and> \<not>Q_1a_2 \<and> \<not>Q_1a_3 \<and> \<not>Q_1b_1) \<or>
  (P_5d_1 \<longrightarrow> (Q_1a_1 \<or> Q_1b_2) \<and> P_5c_1 \<and> \<not>Q_1a_2 \<and> \<not>Q_1a_3 \<and> \<not>Q_1b_1)) \<or>
 ((P_5c_1 \<longrightarrow> (Q_1a_2 \<or> Q_1b_1) \<and> P_5d_1 \<and> \<not>Q_1a_1 \<and> \<not>Q_1a_3 \<and> \<not>Q_1b_2) \<or>
  (P_5d_1 \<longrightarrow> (Q_1a_2 \<or> Q_1b_1) \<and> P_5c_1 \<and> \<not>Q_1a_1 \<and> \<not>Q_1a_3 \<and> \<not>Q_1b_2)) \<or>
 ((P_5c_1 \<longrightarrow> (Q_1a_2 \<or> Q_1b_2) \<and> P_5d_1 \<and> \<not>Q_1a_1 \<and> \<not>Q_1a_3 \<and> \<not>Q_1b_1) \<or>
  (P_5d_1 \<longrightarrow> (Q_1a_2 \<or> Q_1b_2) \<and> P_5c_1 \<and> \<not>Q_1a_1 \<and> \<not>Q_1a_3 \<and> \<not>Q_1b_1)) \<or>
 ((P_5c_1 \<longrightarrow> (Q_1a_3 \<or> Q_1b_1) \<and> P_5d_1 \<and> \<not>Q_1a_1 \<and> \<not>Q_1a_2 \<and> \<not>Q_1b_2) \<or>
  (P_5d_1 \<longrightarrow> (Q_1a_3 \<or> Q_1b_1) \<and> P_5c_1 \<and> \<not>Q_1a_1 \<and> \<not>Q_1a_2 \<and> \<not>Q_1b_2)) \<or>
 (P_5c_1 \<longrightarrow> (Q_1a_3 \<or> Q_1b_2) \<and> P_5d_1 \<and> \<not>Q_1a_1 \<and> \<not>Q_1a_2 \<and> \<not>Q_1b_1) \<or>
 (P_5d_1 \<longrightarrow> (Q_1a_3 \<or> Q_1b_2) \<and> P_5c_1 \<and> \<not>Q_1a_1 \<and> \<not>Q_1a_2 \<and> \<not>Q_1b_1))
\<Longrightarrow>
(((P_5c_1 \<longrightarrow>
	(Q_1a_1 \<and> \<not>Q_1a_2 \<and> \<not>Q_1a_3 
	\<or> Q_1a_2 \<and> \<not>Q_1a_1 \<and> \<not>Q_1a_3 
	\<or> Q_1a_3 \<and> \<not>Q_1a_1 \<and> \<not>Q_1a_2
	\<or> Q_1b_1 \<and> \<not>Q_1b_2 
	\<or> Q_1b_2 \<and> \<not>Q_1b_1) \<and>
	P_5d_1) \<and>
(P_5d_1 \<longrightarrow>
	(Q_1a_1 \<and> \<not>Q_1a_2 \<and> \<not>Q_1a_3 
	\<or> Q_1a_2 \<and> \<not>Q_1a_1 \<and> \<not>Q_1a_3 
	\<or> Q_1a_3 \<and> \<not>Q_1a_1 \<and> \<not>Q_1a_2
	\<or> Q_1b_1 \<and> \<not>Q_1b_2 
	\<or> Q_1b_2 \<and> \<not>Q_1b_1) \<and>
	P_5c_1) \<and>
(\<not>Q_1a_2 \<and> \<not>Q_1a_3 \<or> \<not>Q_1a_1 \<and> \<not>Q_1a_3 \<or> \<not>Q_1a_1 \<and> \<not>Q_1a_2) \<and> (\<not>Q_1b_2 \<or> \<not>Q_1b_1)))"

(*
locale comparision_1 = 
  fixes test_synchron :: "(string * string list) list list list" 
  and test_triggers :: "(string * string list) list list list" 
  and BIP_Connector_2 :: "((string \<times> string) list \<times> (string \<times> string) list list) list"
  and JavaBIP_Connector_2 :: "((string \<times> string) list list \<times> (string \<times> string) list list list) list"
  assumes axiom1: "BIP_Connector_2 = List.product (concat (mk_pair_4 test_synchron)) (product_lists (mk_Trigger_list (mk_pair_4_no_product test_triggers)))"
  and axiom2: "JavaBIP_Connector_2 = mk_jvb (mk_pair_4_no_product test_synchron) (mk_Trigger_list (mk_pair_4_no_product test_triggers))"
begin
lemma test_1: "(\<exists>connector \<in> set BIP_Connector_2.\<exists>sync\<in>set (fst connector).(P (fst sync) (snd sync) \<longrightarrow> 
((\<exists>trig\<in>set (snd connector).\<forall>elm\<in>set trig. Q (fst elm) (snd elm)) 
  \<and> (\<forall>sync1\<in>set (fst connector) - {sync}. P (fst sync1) (snd sync1))
  \<and> (\<forall>rs \<in> remaining_pairs (all_pairs test_synchron) (fst connector). \<not>P (fst rs) (snd rs))
  \<and> (\<forall>rt \<in> remaining_pairs (all_pairs test_triggers) (concat (snd connector)). \<not>Q (fst rt) (snd rt)))
)) \<Longrightarrow>
((\<forall>connector\<in>set JavaBIP_Connector_2.\<forall>sync_list\<in>set (fst connector).\<forall>sync\<in>set sync_list. (P (fst sync) (snd sync) \<longrightarrow> 
      ((\<exists>trig_list\<in>set(snd connector).\<exists>trig\<in>set trig_list. \<forall>t_elm\<in>set trig. (Q (fst t_elm) (snd t_elm)
      \<and> (\<forall>h \<in> set (lookup_3 (fst t_elm) test_triggers) - {snd t_elm}. \<not>Q (fst t_elm) h)))
      \<and> (\<forall>sync_1\<in>set(fst connector)-{sync_list}.\<exists>s_elm_1\<in>set(sync_1). P (fst s_elm_1) (snd s_elm_1)
      \<and> (\<forall>l \<in> set (lookup_3 (fst s_elm_1) test_synchron) - {snd s_elm_1}. \<not>P (fst s_elm_1) l))
    )
))
\<and> (\<forall>j \<in> set test_synchron. \<forall>u \<in> set j. \<forall>t \<in> set u. \<exists>l \<in> set (snd t).\<forall>l1 \<in> set (snd t) - {l}. \<not> P (fst t) l1) 
\<and> (\<forall>i \<in> set test_triggers. \<forall>v \<in> set i. \<forall>k \<in> set v. \<exists>h \<in> set (snd k).\<forall>h1 \<in> set (snd k) - {h}. \<not> Q (fst k) h1))"
  
end*)
>>>>>>> Stashed changes
(*
by presburger
value "
\<forall>x \<in> Tracker.\<forall>y \<in> Peer. (
  broadcast(x) \<and> isReg(y,x) \<longrightarrow> (speak(y) \<Longleftrightarrow> \<not>listen(y))
)
\<equiv>
\<forall>x \<in> Tracker.\<forall>y \<in> Peer. (
  broadcast(x) \<and> isReg(y,x) \<longrightarrow> (speak(y) \<and> \<not>listen(y) \<or> (listen(y) \<and> \<not>speak(y)))
)
\<And>

k \<noteq> j
k \<in> [1,m]
"
value "\<forall>x \<in> Tracker. (
  broadcast(x) \<longrightarrow> (
    \<exists>y \<in> Peer.(isReg(y,x) \<and> speak(y) \<and> (
      \<forall>y'\<in>Peer.(differ(y', y) \<and> isReg(y',x) \<longrightarrow> listen(y')) 
    ))
    \<or> (\<forall>y \<in> Peer. isReg(y,x) \<longrightarrow> listen(y))
  )
)"

value "
\<forall>x \<in> Tracker.\<forall>y \<in> Peer. (
  \<not>(broadcast(x) \<and> isReg(y,x)) \<or> (\<not>speak(y)\<and>listen(y) \<or> \<not>listen(y)\<and>speak(y))
)"

value "
\<not>broadcast(x) \<or> \<not>isReg(y,x) \<or> \<not>speak(y)\<and>listen(y) \<or> \<not>listen(y)\<and>speak(y)
"


(*---------*)
value "
\<forall>x \<in> Tracker. (
  broadcast(x) \<longrightarrow> (
    \<exists>y \<in> Peer.(isReg(y,x) \<and> speak(y) \<and> (
      \<forall>y'\<in>Peer.(differ(y', y) \<and> isReg(y',x) \<longrightarrow> listen(y')) 
    ))
    \<or> (\<forall>y \<in> Peer. isReg(y,x) \<longrightarrow> listen(y))
  )
)"

value "
\<forall>x \<in> Tracker. (
  \<not>broadcast(x) \<or> (
    \<exists>y \<in> Peer.(broadcast(x) \<and> isReg(y,x) \<and> speak(y) \<and> (
      \<forall>y'\<in>Peer.(\<not>(differ(y', y) \<and> isReg(y',x)) \<or> listen(y') \<and> differ(y', y) \<and> isReg(y',x)) 
    ))
  )
  \<or> (\<forall>y \<in> Peer. broadcast(x) \<and> (\<not>isReg(y,x) \<or> isReg(y,x) \<and> listen(y)))
)"

value "
  \<not>broadcast(x) \<or> (
    broadcast(x) \<and> isReg(Px,x) \<and> speak(Px) \<and> (
      \<not>(differ(y', y) \<and> isReg(y',x)) \<or> listen(y') \<and> differ(y', y) \<and> isReg(y',x) 
    )
  )
  \<or> broadcast(x) \<and> (\<not>isReg(y,x) \<or> isReg(y,x) \<and> listen(y))
"

value "
\<not>broadcast(x) 
\<or> (
    broadcast(x) \<and> isReg(Px,x) \<and> speak(Px) 
    \<and> (\<not>differ(y', y) \<or> listen(y') \<and> differ(y', y) \<and> isReg(y',x))
    \<and> (\<not>isReg(y',x) \<or> listen(y') \<and> differ(y', y) \<and> isReg(y',x))
  )
\<or> broadcast(x) \<and> (\<not>isReg(y,x) \<or> isReg(y,x) \<and> listen(y))
"

value "
(broadcast(x) \<Rightarrow> False)
\<or> 
(
    (True \<Rightarrow> broadcast(x))
    \<and> (True \<Rightarrow> isReg(Px,x)) 
    \<and> (True \<Rightarrow> speak(Px)) 
    \<and> (\<not>differ(y', y) \<or> listen(y') \<and> differ(y', y) \<and> isReg(y',x))
    \<and> (\<not>isReg(y',x) \<or> listen(y') \<and> differ(y', y) \<and> isReg(y',x))
)
\<or> 
(
  (True \<Rightarrow> broadcast(x)) 
  \<and> (\<not>isReg(y,x) \<or> isReg(y,x) \<and> listen(y))
)
"

value "
(
  True \<Longrightarrow> broadcast(x)
  \<and> True \<Longrightarrow> isReg(Px,x)
  \<and> True \<Longrightarrow> speak(Px)
  \<and> differ(y', y) \<Longrightarrow> listen(y')  \<and> isReg(y',x)
  \<and> isReg(y',x) \<Longrightarrow> listen(y') \<and> differ(y', y)
  \<and> listen(y') \<Longrightarrow> True

  \<and> isReg(y,x) \<Longrightarrow> True
  \<and> listen(y) \<Longrightarrow> True
)
\<or>
(
  True \<Longrightarrow> broadcast(x) 
  \<and> isReg(y,x) \<Longrightarrow> listen(y)
  \<and> listen(y) \<Longrightarrow> True

  \<and> listen(y') \<Longrightarrow> True
  \<and> differ(y', y) \<Longrightarrow> True
  \<and> isReg(y',x) \<Longrightarrow> True
  \<and> isReg(Px,x) \<Longrightarrow> True
  \<and> speak(Px) \<Longrightarrow> True
)
"

value "
(
  True \<Rightarrow> broadcast(x) \<and> isReg(Px,x) \<and> speak(Px)
  \<and> differ(y', y) \<Rightarrow> listen(y') \<and> isReg(y',x)
  \<and> isReg(y',x) \<Rightarrow> listen(y') \<and> differ(y', y)
  \<and> listen(y') \<Rightarrow> broadcast(x) \<and> isReg(Px,x) \<and> speak(Px)

  \<and> isReg(y,x) \<Rightarrow> broadcast(x) \<and> isReg(Px,x) \<and> speak(Px)
  \<and> listen(y) \<Rightarrow>  broadcast(x) \<and> isReg(Px,x) \<and> speak(Px)
)
\<or>
(
  True \<Rightarrow> broadcast(x) 
  \<and> isReg(y,x) \<Rightarrow> listen(y)
  \<and> listen(y) \<Rightarrow> broadcast(x) 

  \<and> listen(y') \<Rightarrow> broadcast(x) 
  \<and> differ(y', y) \<Rightarrow> broadcast(x) 
  \<and> isReg(y',x) \<Rightarrow> broadcast(x) 
  \<and> isReg(Px,x) \<Rightarrow> broadcast(x) 
  \<and> speak(Px) \<Rightarrow> broadcast(x) 
)
"

value "
(
  True \<Rightarrow> broadcast(x) \<and> isReg(Px,x) \<and> speak(Px)
  \<and> differ(y', y) \<Rightarrow> broadcast(x) \<and> isReg(Px,x) \<and> speak(Px) \<and> isReg(y',x)
  \<and> isReg(y',x) \<Rightarrow> broadcast(x) \<and> isReg(Px,x) \<and> speak(Px) \<and> differ(y', y)
  \<and> listen(y') \<Rightarrow> broadcast(x) \<and> isReg(Px,x) \<and> speak(Px)

  \<and> isReg(y,x) \<Rightarrow> broadcast(x) \<and> isReg(Px,x) \<and> speak(Px)
  \<and> listen(y) \<Rightarrow>  broadcast(x) \<and> isReg(Px,x) \<and> speak(Px)
)
\<or>
(
  True \<Rightarrow> broadcast(x) 
  \<and> isReg(y,x) \<Rightarrow> listen(y) \<and> broadcast(x)
  \<and> listen(y) \<Rightarrow> broadcast(x) 

  \<and> listen(y') \<Rightarrow> broadcast(x) 
  \<and> differ(y', y) \<Rightarrow> broadcast(x) 
  \<and> isReg(y',x) \<Rightarrow> broadcast(x) 
  \<and> isReg(Px,x) \<Rightarrow> broadcast(x) 
  \<and> speak(Px) \<Rightarrow> broadcast(x) 
)
"

value "
{
broadcast(x),
broadcast(x) \<and> isReg(Px,x) \<and> speak(Px), 
broadcast(x) \<and> isReg(Px,x) \<and> speak(Px) \<and> listen(y'),
broadcast(x) \<and> isReg(Px,x) \<and> speak(Px) \<and> listen(y),
broadcast(x) \<and> isReg(Px,x) \<and> speak(Px) \<and> isReg(y,x),
broadcast(x) \<and> isReg(Px,x) \<and> speak(Px) \<and> isReg(y',x) \<and> differ(y', y),
} \<or>
{
broadcast(x),
listen(y) \<and> broadcast(x),
listen(y) \<and> broadcast(x) \<and> isReg(y,x),
listen(y') \<and> broadcast(x),
differ(y', y) \<and> broadcast(x),
isReg(y',x) \<and> broadcast(x),
isReg(Px,x) \<and> broadcast(x),
speak(Px) \<and> broadcast(x),
}"
*)
end