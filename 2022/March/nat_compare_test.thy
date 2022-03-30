theory nat_compare_test
  imports Main "/Volumes/Setup/Isabelle/Isabelle-Code/2022/March/libs_nat_functions"
begin
lemma inst_1: "((((P (4::nat, 1) \<longrightarrow> Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 1)) \<or>
    (P (4, 1) \<longrightarrow> Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 2)) \<or>
    (P (4, 1) \<longrightarrow> Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 3)) \<or>
    (P (4, 1) \<longrightarrow> Q (11, 2) \<and> Q (12, 1) \<or> Q (2, 1)) \<or>
    (P (4, 1) \<longrightarrow> Q (11, 2) \<and> Q (12, 1) \<or> Q (2, 2)) \<or>
    (P (4, 1) \<longrightarrow> Q (11, 2) \<and> Q (12, 1) \<or> Q (2, 3))) \<or>
   (P (4, 2) \<longrightarrow> Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 1)) \<or>
   (P (4, 2) \<longrightarrow> Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 2)) \<or>
   (P (4, 2) \<longrightarrow> Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 3)) \<or>
   (P (4, 2) \<longrightarrow> Q (11, 2) \<and> Q (12, 1) \<or> Q (2, 1)) \<or>
   (P (4, 2) \<longrightarrow> Q (11, 2) \<and> Q (12, 1) \<or> Q (2, 2)) \<or>
   (P (4, 2) \<longrightarrow> Q (11, 2) \<and> Q (12, 1) \<or> Q (2, 3))) \<and>
  (((P (51, 1) \<longrightarrow> (Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 1)) \<and> (P (52, 1) \<or> P (52, 2) \<or> P (52, 3))) \<or>
    (P (51, 1) \<longrightarrow> (Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 2)) \<and> (P (52, 1) \<or> P (52, 2) \<or> P (52, 3))) \<or>
    (P (51, 1) \<longrightarrow> (Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 3)) \<and> (P (52, 1) \<or> P (52, 2) \<or> P (52, 3))) \<or>
    (P (51, 1) \<longrightarrow> (Q (11, 2) \<and> Q (12, 1) \<or> Q (2, 1)) \<and> (P (52, 1) \<or> P (52, 2) \<or> P (52, 3))) \<or>
    (P (51, 1) \<longrightarrow> (Q (11, 2) \<and> Q (12, 1) \<or> Q (2, 2)) \<and> (P (52, 1) \<or> P (52, 2) \<or> P (52, 3))) \<or>
    (P (51, 1) \<longrightarrow> (Q (11, 2) \<and> Q (12, 1) \<or> Q (2, 3)) \<and> (P (52, 1) \<or> P (52, 2) \<or> P (52, 3)))) \<or>
   (P (51, 2) \<longrightarrow> (Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 1)) \<and> (P (52, 1) \<or> P (52, 2) \<or> P (52, 3))) \<or>
   (P (51, 2) \<longrightarrow> (Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 2)) \<and> (P (52, 1) \<or> P (52, 2) \<or> P (52, 3))) \<or>
   (P (51, 2) \<longrightarrow> (Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 3)) \<and> (P (52, 1) \<or> P (52, 2) \<or> P (52, 3))) \<or>
   (P (51, 2) \<longrightarrow> (Q (11, 2) \<and> Q (12, 1) \<or> Q (2, 1)) \<and> (P (52, 1) \<or> P (52, 2) \<or> P (52, 3))) \<or>
   (P (51, 2) \<longrightarrow> (Q (11, 2) \<and> Q (12, 1) \<or> Q (2, 2)) \<and> (P (52, 1) \<or> P (52, 2) \<or> P (52, 3))) \<or>
   (P (51, 2) \<longrightarrow> (Q (11, 2) \<and> Q (12, 1) \<or> Q (2, 3)) \<and> (P (52, 1) \<or> P (52, 2) \<or> P (52, 3)))) \<and>
  (((P (52, 1) \<longrightarrow> (Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 1)) \<and> (P (51, 1) \<or> P (51, 2))) \<or>
    (P (52, 1) \<longrightarrow> (Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 2)) \<and> (P (51, 1) \<or> P (51, 2))) \<or>
    (P (52, 1) \<longrightarrow> (Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 3)) \<and> (P (51, 1) \<or> P (51, 2))) \<or>
    (P (52, 1) \<longrightarrow> (Q (11, 2) \<and> Q (12, 1) \<or> Q (2, 1)) \<and> (P (51, 1) \<or> P (51, 2))) \<or>
    (P (52, 1) \<longrightarrow> (Q (11, 2) \<and> Q (12, 1) \<or> Q (2, 2)) \<and> (P (51, 1) \<or> P (51, 2))) \<or>
    (P (52, 1) \<longrightarrow> (Q (11, 2) \<and> Q (12, 1) \<or> Q (2, 3)) \<and> (P (51, 1) \<or> P (51, 2)))) \<or>
   ((P (52, 2) \<longrightarrow> (Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 1)) \<and> (P (51, 1) \<or> P (51, 2))) \<or>
    (P (52, 2) \<longrightarrow> (Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 2)) \<and> (P (51, 1) \<or> P (51, 2))) \<or>
    (P (52, 2) \<longrightarrow> (Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 3)) \<and> (P (51, 1) \<or> P (51, 2))) \<or>
    (P (52, 2) \<longrightarrow> (Q (11, 2) \<and> Q (12, 1) \<or> Q (2, 1)) \<and> (P (51, 1) \<or> P (51, 2))) \<or>
    (P (52, 2) \<longrightarrow> (Q (11, 2) \<and> Q (12, 1) \<or> Q (2, 2)) \<and> (P (51, 1) \<or> P (51, 2))) \<or>
    (P (52, 2) \<longrightarrow> (Q (11, 2) \<and> Q (12, 1) \<or> Q (2, 3)) \<and> (P (51, 1) \<or> P (51, 2)))) \<or>
   (P (52, 3) \<longrightarrow> (Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 1)) \<and> (P (51, 1) \<or> P (51, 2))) \<or>
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
 (Q (2, 2) \<longrightarrow> \<not> Q (2, 1) \<and> \<not> Q (2, 3)) \<and> (Q (2, 3) \<longrightarrow> \<not> Q (2, 1) \<and> \<not> Q (2, 2))
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

lemma inst_2_rev:"(
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
) \<Longrightarrow> 
(((((P (4::nat, 1) \<longrightarrow> Q (11, 1) \<and> Q (12, 1) \<or> Q (2, 1)) \<or>
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
 (Q (2, 2) \<longrightarrow> \<not> Q (2, 1) \<and> \<not> Q (2, 3)) \<and> (Q (2, 3) \<longrightarrow> \<not> Q (2, 1) \<and> \<not> Q (2, 2)))"
  by argo

(*
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
  nitpick  [timeout=120, card=2]
*)

lemma test_general:
  fixes test_synchron::"(nat * nat list) list list list"
  fixes test_triggers::"(nat * nat list) list list list"
  fixes Connector::"((nat \<times> nat) list list \<times> (nat \<times> nat) list list list) list"
  assumes "Connector = mk_jvb (mk_pair_4_no_product test_synchron) (mk_pair_4 (make_betaSet_3 test_triggers))" and "card (set test_synchron) > 1" and "card (set test_triggers) > 1"
  shows "((\<forall>connector\<in>set Connector.\<forall>sync_list\<in>set (fst connector).\<forall>sync\<in>set sync_list. \<exists>trig_list\<in>set(snd connector).(P ((fst sync),(snd sync)) \<longrightarrow> 
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
  nitpick [timeout = 120, card = 4] 
(*max 4*)

lemma test_general_rev:
  fixes test_synchron::"(nat * nat list) list list list"
  fixes test_triggers::"(nat * nat list) list list list"
  fixes Connector::"((nat \<times> nat) list list \<times> (nat \<times> nat) list list list) list"
  assumes "Connector = mk_jvb (mk_pair_4_no_product test_synchron) (mk_pair_4 (make_betaSet_3 test_triggers))" and "card (set test_synchron) > 2" and "card (set test_triggers) > 2"
  shows "(
(\<forall>connector\<in>set Connector.\<forall>sync_list\<in>set (fst connector).\<forall>sync\<in>set sync_list. (P ((fst sync), (snd sync)) \<longrightarrow> 
      ((\<exists>trig_list\<in>set(snd connector).\<exists>trig\<in>set trig_list. \<forall>t_elm\<in>set trig. (Q ((fst t_elm), (snd t_elm))
      \<and> (\<forall>h \<in> set (lookup_3 (fst t_elm) test_triggers) - {snd t_elm}. \<not>Q ((fst t_elm), h)) ))
      \<and> (\<forall>sync_1\<in>set(fst connector)-{sync_list}.\<exists>s_elm_1\<in>set(sync_1). P ((fst s_elm_1), (snd s_elm_1))
      \<and> (\<forall>l \<in> set (lookup_3 (fst s_elm_1) test_synchron) - {snd s_elm_1}. \<not>P ((fst s_elm_1), l)))
    )
))\<and> (\<forall>j \<in> set test_synchron. \<forall>u \<in> set j. \<forall>t \<in> set u. \<forall>l \<in> set (snd t).(P ((fst t), l) \<longrightarrow> (\<forall>l1 \<in> set (snd t) - {l}. \<not>P ((fst t), l1))))
\<and> (\<forall>i \<in> set test_triggers. \<forall>v \<in> set i. \<forall>k \<in> set v. \<forall>h \<in> set (snd k).(Q ((fst k), h) \<longrightarrow> (\<forall>h1 \<in> set (snd k) - {h}. \<not>Q ((fst k), h1))))
) \<Longrightarrow>
((\<forall>connector\<in>set Connector.\<forall>sync_list\<in>set (fst connector).\<forall>sync\<in>set sync_list. \<exists>trig_list\<in>set(snd connector).(P ((fst sync),(snd sync)) \<longrightarrow> 
      (( \<exists>trig\<in>set trig_list.\<forall>t_elm\<in>set trig. (Q ((fst t_elm), (snd t_elm))
       ))                          
      \<and> (\<forall>sync_1\<in>set(fst connector)-{sync_list}.\<exists>s_elm_1\<in>set(sync_1). P ((fst s_elm_1),(snd s_elm_1))
      )
    )
))\<and> (\<forall>j \<in> set test_synchron. \<forall>u \<in> set j. \<forall>t \<in> set u. \<forall>l \<in> set (snd t).(P ((fst t), l) \<longrightarrow> (\<forall>l1 \<in> set (snd t) - {l}. \<not>P ((fst t), l1))))
\<and> (\<forall>i \<in> set test_triggers. \<forall>v \<in> set i. \<forall>k \<in> set v. \<forall>h \<in> set (snd k).(Q ((fst k), h) \<longrightarrow> (\<forall>h1 \<in> set (snd k) - {h}. \<not>Q ((fst k), h1)))))"
  nitpick [timeout = 120, card = 1-4] (*max 4*)
end