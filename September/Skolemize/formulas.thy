theory formulas
  imports Main "/Volumes/Setup/Isabelle/Isabelle-Code/September/Skolemize/libs"
begin

lemma p_p2_equiv: "((\<forall>p \<in> set Peers. (speak(p) \<longrightarrow> (isReg(p, Rp) \<and> broadcast(Rp) \<and> (\<forall>p1 \<in> set Peers - {p}.(isReg(p1,Rp) \<longrightarrow> \<not>speak(p1)))))) 
\<and> 
(\<forall>p1 \<in> set Peers. (speak(p1) \<longrightarrow> (isReg(p1, Rp1) \<and> broadcast(Rp1) \<and> (\<forall>p2 \<in> set Peers - {p1}.(isReg(p2,Rp1) \<longrightarrow> \<not>speak(p2)))))))
\<longleftrightarrow>
((\<forall>p \<in> set Peers. (speak(p) \<longrightarrow> (isReg(p, Rp) \<and> broadcast(Rp) \<and> (\<forall>p1 \<in> set Peers - {p}.(isReg(p1,Rp) \<longrightarrow> \<not>speak(p1)))))) 
\<and> (\<forall>p1 \<in> set Peers. (speak(p1) \<longrightarrow> (isReg(p1, Rp1) \<and> broadcast(Rp1) \<and> (\<forall>p \<in> set Peers - {p1}.(isReg(p,Rp1) \<longrightarrow> \<not>speak(p))))))
)"
  by meson

value "((\<forall>p \<in> set Peers. (speak(p) \<longrightarrow> (isReg(p, Rp) \<and> broadcast(Rp) \<and> (\<forall>p1 \<in> set Peers - {p}.(isReg(p1,Rp) \<longrightarrow> \<not>speak(p1)))))
\<and> 
(\<forall>p1 \<in> set Peers-{p}. (speak(p1) \<longrightarrow> (isReg(p1, Rp1) \<and> broadcast(Rp1) \<and> (\<forall>p2 \<in> set Peers - {p1}.(isReg(p2,Rp1) \<longrightarrow> \<not>speak(p2))))))))"

(*------------------------*)
lemma p_p2_equiv_2: "
((\<forall>p \<in> set Peers. (speak(p) \<longrightarrow> (isReg(p, Rp) \<and> broadcast(Rp) \<and> (\<forall>p1 \<in> set Peers.(p1\<noteq>p \<and> isReg(p1,Rp) \<longrightarrow> \<not>speak(p1))))))
\<and> 
(\<forall>p1 \<in> set Peers. (speak(p1) \<longrightarrow> (isReg(p1, Rp1) \<and> broadcast(Rp1) \<and> (\<forall>p2 \<in> set Peers.(p1\<noteq>p2 \<and> isReg(p2,Rp1) \<longrightarrow> \<not>speak(p2)))))))
\<longleftrightarrow>
((\<forall>p \<in> set Peers. (speak(p) \<longrightarrow> (isReg(p, Rp) \<and> broadcast(Rp) \<and> (\<forall>p1 \<in> set Peers.(p1\<noteq>p \<and> isReg(p1,Rp) \<longrightarrow> \<not>speak(p1))))))
\<and> 
(\<forall>p1 \<in> set Peers. (speak(p1) \<longrightarrow> (isReg(p1, Rp1) \<and> broadcast(Rp1) \<and> (\<forall>p \<in> set Peers.(p1\<noteq>p \<and> isReg(p,Rp1) \<longrightarrow> \<not>speak(p))))))
)"
  by blast

(*------------------------*)
lemma p_p2_equiv_rutgon: "
((\<forall>p \<in> set Peers. (speak(p) \<longrightarrow> (isReg(p, Rp) \<and> broadcast(Rp) \<and> (\<forall>p1 \<in> set Peers.(p1\<noteq>p \<and> isReg(p1,Rp) \<longrightarrow> \<not>speak(p1)))))
\<and> 
(\<forall>p1 \<in> set Peers. (p1\<noteq>p \<and> speak(p1) \<longrightarrow> (isReg(p1, Rp1) \<and> broadcast(Rp1) \<and> (\<forall>p2 \<in> set Peers.(p1\<noteq>p2 \<and> isReg(p2,Rp1) \<longrightarrow> \<not>speak(p2))))))))
\<longleftrightarrow>
((\<forall>p \<in> set Peers. (speak(p) \<longrightarrow> (isReg(p, Rp) \<and> broadcast(Rp) \<and> (\<forall>p1 \<in> set Peers.(p1\<noteq>p \<and> isReg(p1,Rp) \<longrightarrow> \<not>speak(p1))))) 
\<and> 
(\<forall>p1 \<in> set Peers. (p1\<noteq>p \<and> speak(p1) \<longrightarrow> (isReg(p1, Rp1) \<and> broadcast(Rp1) \<and> (isReg(p,Rp1) \<longrightarrow> \<not>speak(p))))))
)"
  by blast

(*-----------without changing the order-------------*)
(*\<Longrightarrow> no need to care about removing the independent predicates*)
lemma p_p2_equiv_27_09: "
((\<forall>p \<in> set Peers. (speak(p) \<longrightarrow> (isReg(p, Rp) \<and> broadcast(Rp) \<and> (\<forall>p1 \<in> set Peers.(p1\<noteq>p \<and> isReg(p1,Rp) \<longrightarrow> \<not>speak(p1)))))
\<and> 
(\<forall>p1 \<in> set Peers. (speak(p1) \<longrightarrow> (isReg(p1, Rp1) \<and> broadcast(Rp1) \<and> (\<forall>p2 \<in> set Peers.(p1\<noteq>p2 \<and> isReg(p2,Rp1) \<longrightarrow> \<not>speak(p2))))))))
\<longleftrightarrow>
((\<forall>p \<in> set Peers. (speak(p) \<longrightarrow> (isReg(p, Rp) \<and> broadcast(Rp) \<and> (\<forall>p1 \<in> set Peers.(p1\<noteq>p \<and> isReg(p1,Rp) \<longrightarrow> \<not>speak(p1))))) 
\<and> 
(\<forall>p1 \<in> set Peers. (speak(p1) \<longrightarrow> (isReg(p1, Rp1) \<and> broadcast(Rp1) \<and> (p1\<noteq>p \<and> isReg(p,Rp1) \<longrightarrow> \<not>speak(p))))))
)"
  by blast
(*
p == p2 = Peers - {p1}
NEXT: test p, p1, p2 
*)


end