theory approach_Feb
  imports Main
begin

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
value "(\<forall>i \<in> set la. ((P i \<longrightarrow> (\<exists>j \<in> set lb. \<exists>k \<in> set lc.(Q j \<and> R k))) 
\<and> (\<forall>i \<in> set la.(P i \<longrightarrow> (\<forall>i1 \<in> set la - {i}.\<not>P i1)))
\<and> (\<forall>j \<in> set lb.(Q j \<longrightarrow> (\<forall>j1 \<in> set lb - {j}.\<not>Q j1)))
\<and> (\<forall>k \<in> set lc.(R k \<longrightarrow> (\<forall>k1 \<in> set lc - {k}.\<not>R k1)))
))"

(*JavaBIP Simon*)
value "(\<forall>i \<in> set la. ((P i \<longrightarrow> (\<exists>j \<in> set lb. \<exists>k \<in> set lc.(Q j \<and> R k) \<and> (\<forall>j1 \<in> set lb - {j}.\<not>Q j1)
\<and> (\<forall>k1 \<in> set lc - {k}.\<not>R k1))) 
\<and> (\<forall>i \<in> set la.(P i \<longrightarrow> (\<forall>i1 \<in> set la - {i}.\<not>P i1)))
\<and> (\<forall>j \<in> set lb.(Q j \<longrightarrow> (\<forall>j1 \<in> set lb - {j}.\<not>Q j1)))
\<and> (\<forall>k \<in> set lc.(R k \<longrightarrow> (\<forall>k1 \<in> set lc - {k}.\<not>R k1)))
))"

lemma btrinh_jvbsimon:"(\<exists>i \<in> set la.\<exists>j \<in> set lb. \<exists>k \<in> set lc. ((P i \<longrightarrow> ((Q j \<and> R k))) 
\<and> (\<forall>i1 \<in> set la - {i}.\<not>P i1)
\<and> (\<forall>j1 \<in> set lb - {j}.\<not>Q j1)
\<and> (\<forall>k1 \<in> set lc - {k}.\<not>R k1)
)) \<longleftrightarrow>
(\<forall>i \<in> set la. ((P i \<longrightarrow> (\<exists>j \<in> set lb. \<exists>k \<in> set lc.(Q j \<and> R k))) 
\<and> (\<forall>i \<in> set la.(P i \<longrightarrow> (\<forall>i1 \<in> set la - {i}.\<not>P i1)))
\<and> (\<forall>j \<in> set lb.(Q j \<longrightarrow> (\<forall>j1 \<in> set lb - {j}.\<not>Q j1)))
\<and> (\<forall>k \<in> set lc.(R k \<longrightarrow> (\<forall>k1 \<in> set lc - {k}.\<not>R k1)))
))"
  unfolding la_def lb_def lc_def ld_def
  sledgehammer

end