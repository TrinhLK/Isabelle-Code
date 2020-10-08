theory test1
imports Main
begin

context comm_monoid_add
begin

sublocale bigvee: comm_monoid_set HOL.disj False
  defines bigvee = bigvee.F and bigvee' = bigvee.G
  by standard auto

abbreviation bigvee'' :: \<open>bool set \<Rightarrow> bool\<close> ("\<Or>")
  where "\<Or> \<equiv> bigvee (\<lambda>x. x)"

sublocale bigwedge: comm_monoid_set HOL.conj True
  defines bigwedge = bigwedge.F and bigwedge' = bigwedge.G
  by standard auto

abbreviation bigwedge'' :: \<open>bool set \<Rightarrow> bool\<close> ("\<And>")
  where "\<And> \<equiv> bigwedge (\<lambda>x. x)"

end
syntax
  "_bigwedge" :: "pttrn \<Rightarrow> 'a set \<Rightarrow> 'b \<Rightarrow> 'b::comm_monoid_add"  ("(2\<And>(_/\<in>_)./ _)" [0, 51, 10] 10)
translations \<comment> \<open>Beware of argument permutation!\<close>
  "\<And>i\<in>A. b" \<rightleftharpoons> "CONST bigwedge (\<lambda>i. b) A"

syntax
  "_bigvee" :: "pttrn \<Rightarrow> 'a set \<Rightarrow> 'b \<Rightarrow> 'b::comm_monoid_add"  ("(2\<Or>(_/\<in>_)./ _)" [0, 51, 10] 10)
translations \<comment> \<open>Beware of argument permutation!\<close>
  "\<Or>i\<in>A. b" \<rightleftharpoons> "CONST bigvee (\<lambda>i. b) A"

instantiation bool :: comm_monoid_add
begin
definition zero_bool where
[simp]: \<open>zero_bool = False\<close>
definition plus_bool where
[simp]: \<open>plus_bool = (\<or>)\<close>
instance
  by standard auto
end
thm bigvee_def

lemma \<open>finite A \<Longrightarrow> (\<Or>i\<in>A. f i) \<longleftrightarrow> (\<exists>i \<in> A. f i)\<close>
  apply (induction rule: finite_induct)
  apply (auto simp: )
  done

lemma \<open>finite A \<Longrightarrow> (\<And>i\<in>A. f i) \<longleftrightarrow> A = {} \<or> (\<forall>i \<in> A. f i)\<close>
  apply (induction rule: finite_induct)
  apply (auto simp: )
  done

lemma \<open>infinite A \<Longrightarrow> (\<And>i\<in>A. f i) \<longleftrightarrow> True\<close>
  by auto
(*
lemma test1:
  \<open>(\<And>j\<in>L. \<And>u\<in>U. \<And>t\<in>T. \<And>l\<in>L. \<And>l\<^sub>1\<in>L\<^sub>1. \<not>P j u t l\<^sub>1) \<or> 
   (\<Or>i\<in>I. \<Or>v\<in>V. \<And>k\<in>K. \<Or>h\<in>H. Q i \<or> k h) \<Longrightarrow>
   (\<Or>i\<in>I. \<Or>v\<in>V. \<And>k\<in>K. \<Or>h\<in>H. Q i \<or> k h) \<or> (\<And>j\<in>J. \<And>u\<in>U. \<And>t\<in>T. \<And>l\<^sub>1\<in>L\<^sub>1. \<not>P j u t l\<^sub>1)\<close>
  apply auto
*)  
theorem test2:
\<open>((\<And>l\<in>L.\<And>j\<in>L.\<And>u\<in>U.\<And>t\<in>T. \<not>P j u t l) \<or> (\<Or>h\<in>H.\<Or>i\<in>I.\<Or>v\<in>V.\<And>k\<in>K. (Q i v k h \<and> (\<And>h\<^sub>1\<in>H\<^sub>1. \<not>Q i v k h\<^sub>1))))
\<and> (\<Or>l\<in>L.\<Or>h\<in>H.((\<And>j\<in>L.\<And>u\<in>U.\<And>t\<in>T.\<And>l\<^sub>1\<in>L\<^sub>1. \<not>P j u t l\<^sub>1) \<and> (\<Or>i\<in>I.\<Or>v\<in>V.\<And>k\<in>K.\<And>h\<^sub>1\<in>H\<^sub>1. \<not>Q i v k h\<^sub>1)))
\<Longrightarrow> \<Or>l\<in>L.\<Or>h\<in>H.(\<And>j\<in>L.\<And>u\<in>U.(\<And>t\<in>T. P j u t l \<longrightarrow> (\<Or>i\<in>I.\<Or>v\<in>V.\<And>k\<in>K. Q i v k h)) \<and> (\<And>l\<^sub>1\<in>L\<^sub>1. \<not>P j u t l\<^sub>1) \<and> (\<And>h\<^sub>1\<in>H\<^sub>1. \<not>Q i v k h\<^sub>1))\<close>
using [[simp_trace]]
  apply auto
