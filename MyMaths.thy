theory MyMaths
  imports Main
begin
definition xor :: "bool \<Rightarrow> bool \<Rightarrow> bool" where
"xor A B \<equiv> (A & ~B) | (~A & B)"

definition J :: "nat set" where
"J = {n . n > 0}"
definition U :: "nat set" where
"U = {n . n > 0}"
definition T :: "nat set" where
"T = {n . n > 0}"
definition I :: "nat set" where
"I = {n . n > 0}"
definition V :: "nat set" where
"V = {n . n > 0}"
definition K :: "nat set" where
"K = {n . n > 0}"
definition H :: "nat set" where
"H = {n . n > 0}"
definition L :: "nat set" where
"L = {n . n > 0}"

lemma "(\<forall>j \<in> J.\<forall>u \<in> U.\<forall>t \<in> T.\<forall>l \<in> L. P j u t l) \<longrightarrow> (\<forall>i \<in> I.\<forall>v \<in> V.\<forall>k \<in> K.\<forall>h \<in> H. Q i v k h)
\<Longrightarrow> \<not>(\<forall>j \<in> J.\<forall>u \<in> U.\<forall>t \<in> T.\<forall>l \<in> L. P j u t l) \<or> (\<forall>i \<in> I.\<forall>v \<in> V.\<forall>k \<in> K.\<forall>h \<in> H. Q i v k h)"
  apply (auto)
  done

lemma "(\<forall>l \<in> L.\<forall>j \<in> J.\<forall>u \<in> U.\<forall>t \<in> T. \<not> P j u t l) \<or> (\<exists>i \<in> I.\<exists>v \<in> V.\<forall>k \<in> K. (\<exists>h \<in> H. (Q i v k h) \<and> \<forall>h1 \<noteq> h. (\<not>Q i v k h1)))
\<Longrightarrow> (\<exists>i \<in> I.\<exists>v \<in> V.\<forall>k \<in> K. (\<exists>h \<in> H. (Q i v k h) \<and> \<forall>h1 \<noteq> h. (\<not>Q i v k h1))) \<or> (\<forall>l \<in> L.\<forall>j \<in> J.\<forall>u \<in> U.\<forall>t \<in> T. \<not> P j u t l)"
  apply (auto)
  done

lemma test1: "(\<And>j\<in>J.\<And>u\<in>U.\<And>t\<in>T.\<And>l\<in>L.\<And>l1\<noteq>l. \<not>P j u t l1) \<or> (\<Or>i\<in>I.\<Or>v\<in>V.\<And>k\<in>K.\<Or>h\<in>H.Q i v k h) 
\<Longrightarrow>  (\<Or>i\<in>I.\<Or>v\<in>V.\<And>k\<in>K.\<Or>h\<in>H.Q i v k h) \<or> (\<And>j\<in>J.\<And>u\<in>U.\<And>t\<in>T.\<And>l\<in>L.\<And>l1\<noteq>l. \<not>P j u t l1)"
  apply (auto)
  done

(*lemma test1: "(\<And>l \<in> L.\<And>j\<in>J.\<And>u\<in>U.\<And>t\<in>T. \<not>P j u t l) 
  \<or> (\<Or>h\<in>H.\<Or>i\<in>I.\<Or>v\<in>V.\<And>k\<in>K.(Q i v k h \<and> \<And>h1\<noteq>h. ~Q i v k h1))" *)
lemma
  assumes "\<forall>x.\<exists>y.\<forall>z. P x y z"
  shows "\<forall>x.\<exists>y.\<forall>z. P x y (z-2)"
using assms by force

lemma "xor A (~A)"
using [[simp_trace=true]]
  apply(simp add: xor_def)
  done

lemma conj_rule: "\<lbrakk>P; Q\<rbrakk> \<Longrightarrow> (Q & P)"
  apply (rule conjI)
   apply assumption
   apply assumption
  done

lemma conj_rule_1: "\<lbrakk>P; Q\<rbrakk> \<Longrightarrow> (Q & P)"
  apply (auto)
  done

lemma imp_unc: "(P \<longrightarrow> Q) \<Longrightarrow> (~P | Q)"
  apply (auto)
  done
end
