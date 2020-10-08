theory Example_locale
  imports Main
begin
(*parameter: le - a binary predicate with \<sqsubseteq>*)

locale partial_order =
  fixes le :: "'a \<Rightarrow> 'a \<Rightarrow> bool" (infixl "\<sqsubseteq>" 50)
  assumes refl [intro, simp]: "x \<sqsubseteq> x"
  and anti_sym[intro]: "\<lbrakk> x \<sqsubseteq> y; y\<sqsubseteq> x \<rbrakk> \<Longrightarrow> x = y"
  and trans[trans]: "\<lbrakk> x \<sqsubseteq> y; y\<sqsubseteq> z \<rbrakk> \<Longrightarrow> x \<sqsubseteq> z" (*\<And>x y z.\<lbrakk> x \<sqsubseteq> y; y\<sqsubseteq> z \<rbrakk> \<Longrightarrow> x \<sqsubseteq> z *)
begin
definition (in partial_order) less :: "'a \<Rightarrow> 'a \<Rightarrow> bool" (infixl "\<sqsubset>" 50)
  where "(x \<sqsubset> y) = (x \<sqsubseteq> y) \<and> x \<noteq> y"
end
print_locale! partial_order
thm partial_order_def
(*
definition (in partial_order)
  less :: "'a \<Rightarrow> 'a \<Rightarrow> bool" (infixl "\<sqsubset>" 50)
  where "(x \<sqsubset> y) = (x \<sqsubseteq> y) \<and> x \<noteq> y"
*)
locale total_order = partial_order +
  assumes total: "x \<sqsubseteq> y \<or> y \<sqsubseteq> x"

lemma (in total_order) less_total: "x \<sqsubset> y \<or> x = y \<or> y \<sqsubset> x"


end