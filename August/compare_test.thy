theory compare_test
  imports Main 
begin

(*2nd part same as javabip*)
lemma "(
(((P_4_1 \<longrightarrow> (Q_1_1 \<and> \<not>Q_1_2 \<and> \<not>Q_1_3 \<or> Q_2_1 \<and> \<not>Q_2_2)) \<or>
(P_4_1 \<longrightarrow> (Q_1_1 \<and> \<not>Q_1_2 \<and> \<not>Q_1_3 \<or> Q_2_2 \<and> \<not>Q_2_1)) \<or>
(P_4_1 \<longrightarrow> (Q_1_2 \<and> \<not>Q_1_1 \<and> \<not>Q_1_3 \<or> Q_2_1 \<and> \<not>Q_2_2)) \<or>
(P_4_1 \<longrightarrow> (Q_1_2 \<and> \<not>Q_1_1 \<and> \<not>Q_1_3 \<or> Q_2_2 \<and> \<not>Q_2_1)) \<or>
(P_4_1 \<longrightarrow> (Q_1_3 \<and> \<not>Q_1_1 \<and> \<not>Q_1_2 \<or> Q_2_1 \<and> \<not>Q_2_2)) \<or>
(P_4_1 \<longrightarrow> (Q_1_3 \<and> \<not>Q_1_1 \<and> \<not>Q_1_2 \<or> Q_2_2 \<and> \<not>Q_2_1))) \<and>
((P_4_2 \<longrightarrow> (Q_1_1 \<and> \<not>Q_1_2 \<and> \<not>Q_1_3 \<or> Q_2_1 \<and> \<not>Q_2_2)) \<or>
(P_4_2 \<longrightarrow> (Q_1_1 \<and> \<not>Q_1_2 \<and> \<not>Q_1_3 \<or> Q_2_2 \<and> \<not>Q_2_1)) \<or>
(P_4_2 \<longrightarrow> (Q_1_2 \<and> \<not>Q_1_1 \<and> \<not>Q_1_3 \<or> Q_2_1 \<and> \<not>Q_2_2)) \<or>
(P_4_2 \<longrightarrow> (Q_1_2 \<and> \<not>Q_1_1 \<and> \<not>Q_1_3 \<or> Q_2_2 \<and> \<not>Q_2_1)) \<or>
(P_4_2 \<longrightarrow> (Q_1_3 \<and> \<not>Q_1_1 \<and> \<not>Q_1_2 \<or> Q_2_1 \<and> \<not>Q_2_2)) \<or>
(P_4_2 \<longrightarrow> (Q_1_3 \<and> \<not>Q_1_1 \<and> \<not>Q_1_2 \<or> Q_2_2 \<and> \<not>Q_2_1))) \<and>
((P_4_3 \<longrightarrow> (Q_1_1 \<and> \<not>Q_1_2 \<and> \<not>Q_1_3 \<or> Q_2_1 \<and> \<not>Q_2_2)) \<or>
(P_4_3 \<longrightarrow> (Q_1_1 \<and> \<not>Q_1_2 \<and> \<not>Q_1_3 \<or> Q_2_2 \<and> \<not>Q_2_1)) \<or>
(P_4_3 \<longrightarrow> (Q_1_2 \<and> \<not>Q_1_1 \<and> \<not>Q_1_3 \<or> Q_2_1 \<and> \<not>Q_2_2)) \<or>
(P_4_3 \<longrightarrow> (Q_1_2 \<and> \<not>Q_1_1 \<and> \<not>Q_1_3 \<or> Q_2_2 \<and> \<not>Q_2_1)) \<or>
(P_4_3 \<longrightarrow> (Q_1_3 \<and> \<not>Q_1_1 \<and> \<not>Q_1_2 \<or> Q_2_1 \<and> \<not>Q_2_2)) \<or>
(P_4_3 \<longrightarrow> (Q_1_3 \<and> \<not>Q_1_1 \<and> \<not>Q_1_2 \<or> Q_2_2 \<and> \<not>Q_2_1))))
\<and>
(P_4_1 \<longrightarrow> \<not>P_4_2 \<and> \<not>P_4_3) \<and> (P_4_2 \<longrightarrow> \<not>P_4_1 \<and> \<not>P_4_3) \<and> (P_4_3 \<longrightarrow> \<not>P_4_1 \<and> \<not>P_4_2) \<and>
(Q_1_1 \<longrightarrow> \<not>Q_1_2 \<and> \<not>Q_1_3) \<and> (Q_1_2 \<longrightarrow> \<not>Q_1_1 \<and> \<not>Q_1_3) \<and> (Q_1_3 \<longrightarrow> \<not>Q_1_1 \<and> \<not>Q_1_2) \<and>
(Q_2_1 \<longrightarrow> \<not>Q_2_2) \<and> (Q_2_2 \<longrightarrow> \<not>Q_2_1)
)
\<Longrightarrow>
(
(P_4_1 \<longrightarrow> Q_1_1 \<and> \<not>Q_1_2 \<and> \<not>Q_1_3 
		\<or> Q_1_2 \<and> \<not>Q_1_1 \<and> \<not>Q_1_3 
		\<or> Q_1_3 \<and> \<not>Q_1_1 \<and> \<not>Q_1_2 
		\<or> Q_2_1 \<and> \<not>Q_2_2 
		\<or> Q_2_2 \<and> \<not>Q_2_1) \<and>
(P_4_2 \<longrightarrow> Q_1_1 \<and> \<not>Q_1_2 \<and> \<not>Q_1_3 
		\<or> Q_1_2 \<and> \<not>Q_1_1 \<and> \<not>Q_1_3 
		\<or> Q_1_3 \<and> \<not>Q_1_1 \<and> \<not>Q_1_2 
		\<or> Q_2_1 \<and> \<not>Q_2_2 
		\<or> Q_2_2 \<and> \<not>Q_2_1) \<and>
(P_4_3 \<longrightarrow> Q_1_1 \<and> \<not>Q_1_2 \<and> \<not>Q_1_3 
		\<or> Q_1_2 \<and> \<not>Q_1_1 \<and> \<not>Q_1_3 
		\<or> Q_1_3 \<and> \<not>Q_1_1 \<and> \<not>Q_1_2 
		\<or> Q_2_1 \<and> \<not>Q_2_2 
		\<or> Q_2_2 \<and> \<not>Q_2_1) \<and>
(P_4_1 \<longrightarrow> \<not>P_4_2 \<and> \<not>P_4_3) \<and> (P_4_2 \<longrightarrow> \<not>P_4_1 \<and> \<not>P_4_3) \<and> (P_4_3 \<longrightarrow> \<not>P_4_1 \<and> \<not>P_4_2) \<and>
(Q_1_1 \<longrightarrow> \<not>Q_1_2 \<and> \<not>Q_1_3) \<and> (Q_1_2 \<longrightarrow> \<not>Q_1_1 \<and> \<not>Q_1_3) \<and> (Q_1_3 \<longrightarrow> \<not>Q_1_1 \<and> \<not>Q_1_2) \<and>
(Q_2_1 \<longrightarrow> \<not>Q_2_2) \<and> (Q_2_2 \<longrightarrow> \<not>Q_2_1)
)"
  by smt

(*just bip connector with mutual exclusive*)
lemma "(
(((P_4_1 \<longrightarrow> (Q_1_1 \<or> Q_2_1)) \<or>
(P_4_1 \<longrightarrow> (Q_1_1 \<or> Q_2_2)) \<or>
(P_4_1 \<longrightarrow> (Q_1_2 \<or> Q_2_1)) \<or>
(P_4_1 \<longrightarrow> (Q_1_2 \<or> Q_2_2)) \<or>
(P_4_1 \<longrightarrow> (Q_1_3 \<or> Q_2_1)) \<or>
(P_4_1 \<longrightarrow> (Q_1_3 \<or> Q_2_2))) \<and>
((P_4_2 \<longrightarrow> (Q_1_1 \<or> Q_2_1)) \<or>
(P_4_2 \<longrightarrow> (Q_1_1 \<or> Q_2_2)) \<or>
(P_4_2 \<longrightarrow> (Q_1_2 \<or> Q_2_1)) \<or>
(P_4_2 \<longrightarrow> (Q_1_2 \<or> Q_2_2)) \<or>
(P_4_2 \<longrightarrow> (Q_1_3 \<or> Q_2_1)) \<or>
(P_4_2 \<longrightarrow> (Q_1_3 \<or> Q_2_2))) \<and>
((P_4_3 \<longrightarrow> (Q_1_1 \<or> Q_2_1)) \<or>
(P_4_3 \<longrightarrow> (Q_1_1 \<or> Q_2_2)) \<or>
(P_4_3 \<longrightarrow> (Q_1_2 \<or> Q_2_1)) \<or>
(P_4_3 \<longrightarrow> (Q_1_2 \<or> Q_2_2)) \<or>
(P_4_3 \<longrightarrow> (Q_1_3 \<or> Q_2_1)) \<or>
(P_4_3 \<longrightarrow> (Q_1_3 \<or> Q_2_2))))
\<and>
(P_4_1 \<longrightarrow> \<not>P_4_2 \<and> \<not>P_4_3) \<and> (P_4_2 \<longrightarrow> \<not>P_4_1 \<and> \<not>P_4_3) \<and> (P_4_3 \<longrightarrow> \<not>P_4_1 \<and> \<not>P_4_2) \<and>
(Q_1_1 \<longrightarrow> \<not>Q_1_2 \<and> \<not>Q_1_3) \<and> (Q_1_2 \<longrightarrow> \<not>Q_1_1 \<and> \<not>Q_1_3) \<and> (Q_1_3 \<longrightarrow> \<not>Q_1_1 \<and> \<not>Q_1_2) \<and>
(Q_2_1 \<longrightarrow> \<not>Q_2_2) \<and> (Q_2_2 \<longrightarrow> \<not>Q_2_1)
)
\<Longrightarrow>
(
(P_4_1 \<longrightarrow> Q_1_1 \<and> \<not>Q_1_2 \<and> \<not>Q_1_3 
		\<or> Q_1_2 \<and> \<not>Q_1_1 \<and> \<not>Q_1_3 
		\<or> Q_1_3 \<and> \<not>Q_1_1 \<and> \<not>Q_1_2 
		\<or> Q_2_1 \<and> \<not>Q_2_2 
		\<or> Q_2_2 \<and> \<not>Q_2_1) \<and>
(P_4_2 \<longrightarrow> Q_1_1 \<and> \<not>Q_1_2 \<and> \<not>Q_1_3 
		\<or> Q_1_2 \<and> \<not>Q_1_1 \<and> \<not>Q_1_3 
		\<or> Q_1_3 \<and> \<not>Q_1_1 \<and> \<not>Q_1_2 
		\<or> Q_2_1 \<and> \<not>Q_2_2 
		\<or> Q_2_2 \<and> \<not>Q_2_1) \<and>
(P_4_3 \<longrightarrow> Q_1_1 \<and> \<not>Q_1_2 \<and> \<not>Q_1_3 
		\<or> Q_1_2 \<and> \<not>Q_1_1 \<and> \<not>Q_1_3 
		\<or> Q_1_3 \<and> \<not>Q_1_1 \<and> \<not>Q_1_2 
		\<or> Q_2_1 \<and> \<not>Q_2_2 
		\<or> Q_2_2 \<and> \<not>Q_2_1) \<and>
(P_4_1 \<longrightarrow> \<not>P_4_2 \<and> \<not>P_4_3) \<and> (P_4_2 \<longrightarrow> \<not>P_4_1 \<and> \<not>P_4_3) \<and> (P_4_3 \<longrightarrow> \<not>P_4_1 \<and> \<not>P_4_2) \<and>
(Q_1_1 \<longrightarrow> \<not>Q_1_2 \<and> \<not>Q_1_3) \<and> (Q_1_2 \<longrightarrow> \<not>Q_1_1 \<and> \<not>Q_1_3) \<and> (Q_1_3 \<longrightarrow> \<not>Q_1_1 \<and> \<not>Q_1_2) \<and>
(Q_2_1 \<longrightarrow> \<not>Q_2_2) \<and> (Q_2_2 \<longrightarrow> \<not>Q_2_1)
)"
  by smt

lemma "
(
(P_4_1 \<longrightarrow> Q_1_1 \<and> \<not>Q_1_2 \<and> \<not>Q_1_3 
		\<or> Q_1_2 \<and> \<not>Q_1_1 \<and> \<not>Q_1_3 
		\<or> Q_1_3 \<and> \<not>Q_1_1 \<and> \<not>Q_1_2 
		\<or> Q_2_1 \<and> \<not>Q_2_2 
		\<or> Q_2_2 \<and> \<not>Q_2_1) \<and>
(P_4_2 \<longrightarrow> Q_1_1 \<and> \<not>Q_1_2 \<and> \<not>Q_1_3 
		\<or> Q_1_2 \<and> \<not>Q_1_1 \<and> \<not>Q_1_3 
		\<or> Q_1_3 \<and> \<not>Q_1_1 \<and> \<not>Q_1_2 
		\<or> Q_2_1 \<and> \<not>Q_2_2 
		\<or> Q_2_2 \<and> \<not>Q_2_1) \<and>
(P_4_3 \<longrightarrow> Q_1_1 \<and> \<not>Q_1_2 \<and> \<not>Q_1_3 
		\<or> Q_1_2 \<and> \<not>Q_1_1 \<and> \<not>Q_1_3 
		\<or> Q_1_3 \<and> \<not>Q_1_1 \<and> \<not>Q_1_2 
		\<or> Q_2_1 \<and> \<not>Q_2_2 
		\<or> Q_2_2 \<and> \<not>Q_2_1) \<and>
(P_4_1 \<longrightarrow> \<not>P_4_2 \<and> \<not>P_4_3) \<and> (P_4_2 \<longrightarrow> \<not>P_4_1 \<and> \<not>P_4_3) \<and> (P_4_3 \<longrightarrow> \<not>P_4_1 \<and> \<not>P_4_2) \<and>
(Q_1_1 \<longrightarrow> \<not>Q_1_2 \<and> \<not>Q_1_3) \<and> (Q_1_2 \<longrightarrow> \<not>Q_1_1 \<and> \<not>Q_1_3) \<and> (Q_1_3 \<longrightarrow> \<not>Q_1_1 \<and> \<not>Q_1_2) \<and>
(Q_2_1 \<longrightarrow> \<not>Q_2_2) \<and> (Q_2_2 \<longrightarrow> \<not>Q_2_1)
)
\<Longrightarrow>
(
(((P_4_1 \<longrightarrow> (Q_1_1 \<or> Q_2_1)) \<or>
(P_4_1 \<longrightarrow> (Q_1_1 \<or> Q_2_2)) \<or>
(P_4_1 \<longrightarrow> (Q_1_2 \<or> Q_2_1)) \<or>
(P_4_1 \<longrightarrow> (Q_1_2 \<or> Q_2_2)) \<or>
(P_4_1 \<longrightarrow> (Q_1_3 \<or> Q_2_1)) \<or>
(P_4_1 \<longrightarrow> (Q_1_3 \<or> Q_2_2))) \<and>
((P_4_2 \<longrightarrow> (Q_1_1 \<or> Q_2_1)) \<or>
(P_4_2 \<longrightarrow> (Q_1_1 \<or> Q_2_2)) \<or>
(P_4_2 \<longrightarrow> (Q_1_2 \<or> Q_2_1)) \<or>
(P_4_2 \<longrightarrow> (Q_1_2 \<or> Q_2_2)) \<or>
(P_4_2 \<longrightarrow> (Q_1_3 \<or> Q_2_1)) \<or>
(P_4_2 \<longrightarrow> (Q_1_3 \<or> Q_2_2))) \<and>
((P_4_3 \<longrightarrow> (Q_1_1 \<or> Q_2_1)) \<or>
(P_4_3 \<longrightarrow> (Q_1_1 \<or> Q_2_2)) \<or>
(P_4_3 \<longrightarrow> (Q_1_2 \<or> Q_2_1)) \<or>
(P_4_3 \<longrightarrow> (Q_1_2 \<or> Q_2_2)) \<or>
(P_4_3 \<longrightarrow> (Q_1_3 \<or> Q_2_1)) \<or>
(P_4_3 \<longrightarrow> (Q_1_3 \<or> Q_2_2)))) \<and>
(P_4_1 \<longrightarrow> \<not>P_4_2 \<and> \<not>P_4_3) \<and> (P_4_2 \<longrightarrow> \<not>P_4_1 \<and> \<not>P_4_3) \<and> (P_4_3 \<longrightarrow> \<not>P_4_1 \<and> \<not>P_4_2) \<and>
(Q_1_1 \<longrightarrow> \<not>Q_1_2 \<and> \<not>Q_1_3) \<and> (Q_1_2 \<longrightarrow> \<not>Q_1_1 \<and> \<not>Q_1_3) \<and> (Q_1_3 \<longrightarrow> \<not>Q_1_1 \<and> \<not>Q_1_2) \<and>
(Q_2_1 \<longrightarrow> \<not>Q_2_2) \<and> (Q_2_2 \<longrightarrow> \<not>Q_2_1)
)
"
  by smt

lemma rut_gon: "
(
(P_4_1 \<longrightarrow> Q_1_1 \<and> \<not>Q_1_2 \<and> \<not>Q_1_3 
		\<or> Q_1_2 \<and> \<not>Q_1_1 \<and> \<not>Q_1_3 
		\<or> Q_1_3 \<and> \<not>Q_1_1 \<and> \<not>Q_1_2 
		\<or> Q_2_1 \<and> \<not>Q_2_2 
		\<or> Q_2_2 \<and> \<not>Q_2_1) \<and>
(P_4_2 \<longrightarrow> Q_1_1 \<and> \<not>Q_1_2 \<and> \<not>Q_1_3 
		\<or> Q_1_2 \<and> \<not>Q_1_1 \<and> \<not>Q_1_3 
		\<or> Q_1_3 \<and> \<not>Q_1_1 \<and> \<not>Q_1_2 
		\<or> Q_2_1 \<and> \<not>Q_2_2 
		\<or> Q_2_2 \<and> \<not>Q_2_1) \<and>
(P_4_3 \<longrightarrow> Q_1_1 \<and> \<not>Q_1_2 \<and> \<not>Q_1_3 
		\<or> Q_1_2 \<and> \<not>Q_1_1 \<and> \<not>Q_1_3 
		\<or> Q_1_3 \<and> \<not>Q_1_1 \<and> \<not>Q_1_2 
		\<or> Q_2_1 \<and> \<not>Q_2_2 
		\<or> Q_2_2 \<and> \<not>Q_2_1)\<and>
(P_4_1 \<longrightarrow> \<not>P_4_2 \<and> \<not>P_4_3) \<and> (P_4_2 \<longrightarrow> \<not>P_4_1 \<and> \<not>P_4_3) \<and> (P_4_3 \<longrightarrow> \<not>P_4_1 \<and> \<not>P_4_2) \<and>
(Q_1_1 \<longrightarrow> \<not>Q_1_2 \<and> \<not>Q_1_3) \<and> (Q_1_2 \<longrightarrow> \<not>Q_1_1 \<and> \<not>Q_1_3) \<and> (Q_1_3 \<longrightarrow> \<not>Q_1_1 \<and> \<not>Q_1_2) \<and>
(Q_2_1 \<longrightarrow> \<not>Q_2_2) \<and> (Q_2_2 \<longrightarrow> \<not>Q_2_1)
)
\<Longrightarrow>
(
(((P_4_1 \<longrightarrow> (Q_1_1 \<or> Q_2_1)) \<or>
(P_4_1 \<longrightarrow> (Q_1_1 \<or> Q_2_2)) \<or>
(P_4_1 \<longrightarrow> (Q_1_2 \<or> Q_2_1)) \<or>
(P_4_1 \<longrightarrow> (Q_1_2 \<or> Q_2_2)) \<or>
(P_4_1 \<longrightarrow> (Q_1_3 \<or> Q_2_1)) \<or>
(P_4_1 \<longrightarrow> (Q_1_3 \<or> Q_2_2))) \<and>
((P_4_2 \<longrightarrow> (Q_1_1 \<or> Q_2_1)) \<or>
(P_4_2 \<longrightarrow> (Q_1_1 \<or> Q_2_2)) \<or>
(P_4_2 \<longrightarrow> (Q_1_2 \<or> Q_2_1)) \<or>
(P_4_2 \<longrightarrow> (Q_1_2 \<or> Q_2_2)) \<or>
(P_4_2 \<longrightarrow> (Q_1_3 \<or> Q_2_1)) \<or>
(P_4_2 \<longrightarrow> (Q_1_3 \<or> Q_2_2))) \<and>
((P_4_3 \<longrightarrow> (Q_1_1 \<or> Q_2_1)) \<or>
(P_4_3 \<longrightarrow> (Q_1_1 \<or> Q_2_2)) \<or>
(P_4_3 \<longrightarrow> (Q_1_2 \<or> Q_2_1)) \<or>
(P_4_3 \<longrightarrow> (Q_1_2 \<or> Q_2_2)) \<or>
(P_4_3 \<longrightarrow> (Q_1_3 \<or> Q_2_1)) \<or>
(P_4_3 \<longrightarrow> (Q_1_3 \<or> Q_2_2))))\<and>
(P_4_1 \<longrightarrow> \<not>P_4_2 \<and> \<not>P_4_3) \<and> (P_4_2 \<longrightarrow> \<not>P_4_1 \<and> \<not>P_4_3) \<and> (P_4_3 \<longrightarrow> \<not>P_4_1 \<and> \<not>P_4_2) \<and>
(Q_1_1 \<longrightarrow> \<not>Q_1_2 \<and> \<not>Q_1_3) \<and> (Q_1_2 \<longrightarrow> \<not>Q_1_1 \<and> \<not>Q_1_3) \<and> (Q_1_3 \<longrightarrow> \<not>Q_1_1 \<and> \<not>Q_1_2) \<and>
(Q_2_1 \<longrightarrow> \<not>Q_2_2) \<and> (Q_2_2 \<longrightarrow> \<not>Q_2_1)
)
"
  by smt

lemma rut_gon_rev: "
(
(((P_4_1 \<longrightarrow> (Q_1_1 \<or> Q_2_1)) \<or>
(P_4_1 \<longrightarrow> (Q_1_1 \<or> Q_2_2)) \<or>
(P_4_1 \<longrightarrow> (Q_1_2 \<or> Q_2_1)) \<or>
(P_4_1 \<longrightarrow> (Q_1_2 \<or> Q_2_2)) \<or>
(P_4_1 \<longrightarrow> (Q_1_3 \<or> Q_2_1)) \<or>
(P_4_1 \<longrightarrow> (Q_1_3 \<or> Q_2_2))) \<and>
((P_4_2 \<longrightarrow> (Q_1_1 \<or> Q_2_1)) \<or>
(P_4_2 \<longrightarrow> (Q_1_1 \<or> Q_2_2)) \<or>
(P_4_2 \<longrightarrow> (Q_1_2 \<or> Q_2_1)) \<or>
(P_4_2 \<longrightarrow> (Q_1_2 \<or> Q_2_2)) \<or>
(P_4_2 \<longrightarrow> (Q_1_3 \<or> Q_2_1)) \<or>
(P_4_2 \<longrightarrow> (Q_1_3 \<or> Q_2_2))) \<and>
((P_4_3 \<longrightarrow> (Q_1_1 \<or> Q_2_1)) \<or>
(P_4_3 \<longrightarrow> (Q_1_1 \<or> Q_2_2)) \<or>
(P_4_3 \<longrightarrow> (Q_1_2 \<or> Q_2_1)) \<or>
(P_4_3 \<longrightarrow> (Q_1_2 \<or> Q_2_2)) \<or>
(P_4_3 \<longrightarrow> (Q_1_3 \<or> Q_2_1)) \<or>
(P_4_3 \<longrightarrow> (Q_1_3 \<or> Q_2_2)))) \<and>
(P_4_1 \<longrightarrow> \<not>P_4_2 \<and> \<not>P_4_3) \<and> (P_4_2 \<longrightarrow> \<not>P_4_1 \<and> \<not>P_4_3) \<and> (P_4_3 \<longrightarrow> \<not>P_4_1 \<and> \<not>P_4_2) \<and>
(Q_1_1 \<longrightarrow> \<not>Q_1_2 \<and> \<not>Q_1_3) \<and> (Q_1_2 \<longrightarrow> \<not>Q_1_1 \<and> \<not>Q_1_3) \<and> (Q_1_3 \<longrightarrow> \<not>Q_1_1 \<and> \<not>Q_1_2) \<and>
(Q_2_1 \<longrightarrow> \<not>Q_2_2) \<and> (Q_2_2 \<longrightarrow> \<not>Q_2_1)
)
\<Longrightarrow>
(
(P_4_1 \<longrightarrow> Q_1_1 \<and> \<not>Q_1_2 \<and> \<not>Q_1_3 
		\<or> Q_1_2 \<and> \<not>Q_1_1 \<and> \<not>Q_1_3 
		\<or> Q_1_3 \<and> \<not>Q_1_1 \<and> \<not>Q_1_2 
		\<or> Q_2_1 \<and> \<not>Q_2_2 
		\<or> Q_2_2 \<and> \<not>Q_2_1) \<and>
(P_4_2 \<longrightarrow> Q_1_1 \<and> \<not>Q_1_2 \<and> \<not>Q_1_3 
		\<or> Q_1_2 \<and> \<not>Q_1_1 \<and> \<not>Q_1_3 
		\<or> Q_1_3 \<and> \<not>Q_1_1 \<and> \<not>Q_1_2 
		\<or> Q_2_1 \<and> \<not>Q_2_2 
		\<or> Q_2_2 \<and> \<not>Q_2_1) \<and>
(P_4_3 \<longrightarrow> Q_1_1 \<and> \<not>Q_1_2 \<and> \<not>Q_1_3 
		\<or> Q_1_2 \<and> \<not>Q_1_1 \<and> \<not>Q_1_3 
		\<or> Q_1_3 \<and> \<not>Q_1_1 \<and> \<not>Q_1_2 
		\<or> Q_2_1 \<and> \<not>Q_2_2 
		\<or> Q_2_2 \<and> \<not>Q_2_1) \<and>
(P_4_1 \<longrightarrow> \<not>P_4_2 \<and> \<not>P_4_3) \<and> (P_4_2 \<longrightarrow> \<not>P_4_1 \<and> \<not>P_4_3) \<and> (P_4_3 \<longrightarrow> \<not>P_4_1 \<and> \<not>P_4_2) \<and>
(Q_1_1 \<longrightarrow> \<not>Q_1_2 \<and> \<not>Q_1_3) \<and> (Q_1_2 \<longrightarrow> \<not>Q_1_1 \<and> \<not>Q_1_3) \<and> (Q_1_3 \<longrightarrow> \<not>Q_1_1 \<and> \<not>Q_1_2) \<and>
(Q_2_1 \<longrightarrow> \<not>Q_2_2) \<and> (Q_2_2 \<longrightarrow> \<not>Q_2_1)
)
"
  by smt
end