theory compare
  imports Main "/Volumes/Setup/Isabelle/Isabelle-Code/August/libs_functions" "/Volumes/Setup/Isabelle/Isabelle-Code/August/bip" "/Volumes/Setup/Isabelle/Isabelle-Code/August/javabip"
begin

lemma instance_test: "((((P ''4'' ''1'' \<longrightarrow>
    (Q ''1a'' ''1'' \<and> \<not> Q ''1a'' ''2'' \<or> Q ''1a'' ''2'' \<and> \<not> Q ''1a'' ''1'') \<or>
    (Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<or> Q ''1b'' ''2'' \<and> \<not> Q ''1b'' ''1'') \<or>
    Q ''2'' ''1'' \<or>
    Q ''3a'' ''1'' \<or>
    Q ''3b1'' ''1'' \<and> Q ''3b2'' ''1'' \<and> \<not> Q ''3b2'' ''2'' \<or>
    Q ''3b1'' ''1'' \<and> Q ''3b2'' ''2'' \<and> \<not> Q ''3b2'' ''1'') \<and>
   (P ''4'' ''2'' \<longrightarrow>
    (Q ''1a'' ''1'' \<and> \<not> Q ''1a'' ''2'' \<or> Q ''1a'' ''2'' \<and> \<not> Q ''1a'' ''1'') \<or>
    (Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<or> Q ''1b'' ''2'' \<and> \<not> Q ''1b'' ''1'') \<or>
    Q ''2'' ''1'' \<or>
    Q ''3a'' ''1'' \<or>
    Q ''3b1'' ''1'' \<and> Q ''3b2'' ''1'' \<and> \<not> Q ''3b2'' ''2'' \<or>
    Q ''3b1'' ''1'' \<and> Q ''3b2'' ''2'' \<and> \<not> Q ''3b2'' ''1'')) \<and>
  (P ''5c'' ''1'' \<longrightarrow>
   ((Q ''1a'' ''1'' \<and> \<not> Q ''1a'' ''2'' \<or> Q ''1a'' ''2'' \<and> \<not> Q ''1a'' ''1'') \<or>
    (Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<or> Q ''1b'' ''2'' \<and> \<not> Q ''1b'' ''1'') \<or>
    Q ''2'' ''1'' \<or>
    Q ''3a'' ''1'' \<or>
    Q ''3b1'' ''1'' \<and> Q ''3b2'' ''1'' \<and> \<not> Q ''3b2'' ''2'' \<or>
    Q ''3b1'' ''1'' \<and> Q ''3b2'' ''2'' \<and> \<not> Q ''3b2'' ''1'') \<and>
   (P ''5d'' ''1'' \<and> \<not> P ''5d'' ''2'' \<or> P ''5d'' ''2'' \<and> \<not> P ''5d'' ''1'')) \<and>
  (P ''5d'' ''1'' \<longrightarrow>
   ((Q ''1a'' ''1'' \<and> \<not> Q ''1a'' ''2'' \<or> Q ''1a'' ''2'' \<and> \<not> Q ''1a'' ''1'') \<or>
    (Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<or> Q ''1b'' ''2'' \<and> \<not> Q ''1b'' ''1'') \<or>
    Q ''2'' ''1'' \<or>
    Q ''3a'' ''1'' \<or>
    Q ''3b1'' ''1'' \<and> Q ''3b2'' ''1'' \<and> \<not> Q ''3b2'' ''2'' \<or>
    Q ''3b1'' ''1'' \<and> Q ''3b2'' ''2'' \<and> \<not> Q ''3b2'' ''1'') \<and>
   P ''5c'' ''1'') \<and>
  (P ''5d'' ''2'' \<longrightarrow>
   ((Q ''1a'' ''1'' \<and> \<not> Q ''1a'' ''2'' \<or> Q ''1a'' ''2'' \<and> \<not> Q ''1a'' ''1'') \<or>
    (Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<or> Q ''1b'' ''2'' \<and> \<not> Q ''1b'' ''1'') \<or>
    Q ''2'' ''1'' \<or>
    Q ''3a'' ''1'' \<or>
    Q ''3b1'' ''1'' \<and> Q ''3b2'' ''1'' \<and> \<not> Q ''3b2'' ''2'' \<or>
    Q ''3b1'' ''1'' \<and> Q ''3b2'' ''2'' \<and> \<not> Q ''3b2'' ''1'') \<and>
   P ''5c'' ''1'')) \<and>
 ((\<not> P ''4'' ''2'' \<or> \<not> P ''4'' ''1'') \<and> (\<not> P ''5d'' ''2'' \<or> \<not> P ''5d'' ''1'')) \<and>
 ((\<not> Q ''1a'' ''2'' \<or> \<not> Q ''1a'' ''1'') \<and> (\<not> Q ''1b'' ''2'' \<or> \<not> Q ''1b'' ''1'')) \<and>
 (\<not> Q ''3b2'' ''2'' \<or> \<not> Q ''3b2'' ''1''))
\<Longrightarrow>
((P ''4'' ''1'' \<longrightarrow>
  (Q ''3a'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1a'' ''1'') \<and>
  (\<not> P ''4'' ''2'' \<and> \<not> P ''5c'' ''1'' \<and> \<not> P ''5d'' ''1'' \<and> \<not> P ''5d'' ''2'') \<and>
  \<not> Q ''1a'' ''2'' \<and>
  \<not> Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3b1'' ''1'' \<and> \<not> Q ''3b2'' ''1'' \<and> \<not> Q ''3b2'' ''2'') \<or>
 (P ''4'' ''1'' \<longrightarrow>
  (Q ''3a'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1a'' ''2'') \<and>
  (\<not> P ''4'' ''2'' \<and> \<not> P ''5c'' ''1'' \<and> \<not> P ''5d'' ''1'' \<and> \<not> P ''5d'' ''2'') \<and>
  \<not> Q ''1a'' ''1'' \<and>
  \<not> Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3b1'' ''1'' \<and> \<not> Q ''3b2'' ''1'' \<and> \<not> Q ''3b2'' ''2'') \<or>
 (P ''4'' ''1'' \<longrightarrow>
  (Q ''3a'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1b'' ''1'') \<and>
  (\<not> P ''4'' ''2'' \<and> \<not> P ''5c'' ''1'' \<and> \<not> P ''5d'' ''1'' \<and> \<not> P ''5d'' ''2'') \<and>
  \<not> Q ''1a'' ''1'' \<and>
  \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3b1'' ''1'' \<and> \<not> Q ''3b2'' ''1'' \<and> \<not> Q ''3b2'' ''2'') \<or>
 (P ''4'' ''1'' \<longrightarrow>
  (Q ''3a'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1b'' ''2'') \<and>
  (\<not> P ''4'' ''2'' \<and> \<not> P ''5c'' ''1'' \<and> \<not> P ''5d'' ''1'' \<and> \<not> P ''5d'' ''2'') \<and>
  \<not> Q ''1a'' ''1'' \<and>
  \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''3b1'' ''1'' \<and> \<not> Q ''3b2'' ''1'' \<and> \<not> Q ''3b2'' ''2'') \<or>
 (P ''4'' ''1'' \<longrightarrow>
  (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1a'' ''1'') \<and>
  (\<not> P ''4'' ''2'' \<and> \<not> P ''5c'' ''1'' \<and> \<not> P ''5d'' ''1'' \<and> \<not> P ''5d'' ''2'') \<and>
  \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''2'') \<or>
 (P ''4'' ''1'' \<longrightarrow>
  (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1a'' ''2'') \<and>
  (\<not> P ''4'' ''2'' \<and> \<not> P ''5c'' ''1'' \<and> \<not> P ''5d'' ''1'' \<and> \<not> P ''5d'' ''2'') \<and>
  \<not> Q ''1a'' ''1'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''2'') \<or>
 (P ''4'' ''1'' \<longrightarrow>
  (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''2'' \<or> Q ''2'' ''1'' \<or> Q ''1a'' ''1'') \<and>
  (\<not> P ''4'' ''2'' \<and> \<not> P ''5c'' ''1'' \<and> \<not> P ''5d'' ''1'' \<and> \<not> P ''5d'' ''2'') \<and>
  \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''1'') \<or>
 (P ''4'' ''1'' \<longrightarrow>
  (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''2'' \<or> Q ''2'' ''1'' \<or> Q ''1a'' ''2'') \<and>
  (\<not> P ''4'' ''2'' \<and> \<not> P ''5c'' ''1'' \<and> \<not> P ''5d'' ''1'' \<and> \<not> P ''5d'' ''2'') \<and>
  \<not> Q ''1a'' ''1'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''1'') \<or>
 (P ''4'' ''1'' \<longrightarrow>
  (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1b'' ''1'') \<and>
  (\<not> P ''4'' ''2'' \<and> \<not> P ''5c'' ''1'' \<and> \<not> P ''5d'' ''1'' \<and> \<not> P ''5d'' ''2'') \<and>
  \<not> Q ''1a'' ''1'' \<and> \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''2'') \<or>
 (P ''4'' ''1'' \<longrightarrow>
  (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1b'' ''2'') \<and>
  (\<not> P ''4'' ''2'' \<and> \<not> P ''5c'' ''1'' \<and> \<not> P ''5d'' ''1'' \<and> \<not> P ''5d'' ''2'') \<and>
  \<not> Q ''1a'' ''1'' \<and> \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''2'') \<or>
 (P ''4'' ''1'' \<longrightarrow>
  (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''2'' \<or> Q ''2'' ''1'' \<or> Q ''1b'' ''1'') \<and>
  (\<not> P ''4'' ''2'' \<and> \<not> P ''5c'' ''1'' \<and> \<not> P ''5d'' ''1'' \<and> \<not> P ''5d'' ''2'') \<and>
  \<not> Q ''1a'' ''1'' \<and> \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''1'') \<or>
 (P ''4'' ''1'' \<longrightarrow>
  (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''2'' \<or> Q ''2'' ''1'' \<or> Q ''1b'' ''2'') \<and>
  (\<not> P ''4'' ''2'' \<and> \<not> P ''5c'' ''1'' \<and> \<not> P ''5d'' ''1'' \<and> \<not> P ''5d'' ''2'') \<and>
  \<not> Q ''1a'' ''1'' \<and> \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''1'') \<or>
 (P ''4'' ''2'' \<longrightarrow>
  (Q ''3a'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1a'' ''1'') \<and>
  (\<not> P ''4'' ''1'' \<and> \<not> P ''5c'' ''1'' \<and> \<not> P ''5d'' ''1'' \<and> \<not> P ''5d'' ''2'') \<and>
  \<not> Q ''1a'' ''2'' \<and>
  \<not> Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3b1'' ''1'' \<and> \<not> Q ''3b2'' ''1'' \<and> \<not> Q ''3b2'' ''2'') \<or>
 (P ''4'' ''2'' \<longrightarrow>
  (Q ''3a'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1a'' ''2'') \<and>
  (\<not> P ''4'' ''1'' \<and> \<not> P ''5c'' ''1'' \<and> \<not> P ''5d'' ''1'' \<and> \<not> P ''5d'' ''2'') \<and>
  \<not> Q ''1a'' ''1'' \<and>
  \<not> Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3b1'' ''1'' \<and> \<not> Q ''3b2'' ''1'' \<and> \<not> Q ''3b2'' ''2'') \<or>
 (P ''4'' ''2'' \<longrightarrow>
  (Q ''3a'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1b'' ''1'') \<and>
  (\<not> P ''4'' ''1'' \<and> \<not> P ''5c'' ''1'' \<and> \<not> P ''5d'' ''1'' \<and> \<not> P ''5d'' ''2'') \<and>
  \<not> Q ''1a'' ''1'' \<and>
  \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3b1'' ''1'' \<and> \<not> Q ''3b2'' ''1'' \<and> \<not> Q ''3b2'' ''2'') \<or>
 (P ''4'' ''2'' \<longrightarrow>
  (Q ''3a'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1b'' ''2'') \<and>
  (\<not> P ''4'' ''1'' \<and> \<not> P ''5c'' ''1'' \<and> \<not> P ''5d'' ''1'' \<and> \<not> P ''5d'' ''2'') \<and>
  \<not> Q ''1a'' ''1'' \<and>
  \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''3b1'' ''1'' \<and> \<not> Q ''3b2'' ''1'' \<and> \<not> Q ''3b2'' ''2'') \<or>
 (P ''4'' ''2'' \<longrightarrow>
  (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1a'' ''1'') \<and>
  (\<not> P ''4'' ''1'' \<and> \<not> P ''5c'' ''1'' \<and> \<not> P ''5d'' ''1'' \<and> \<not> P ''5d'' ''2'') \<and>
  \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''2'') \<or>
 (P ''4'' ''2'' \<longrightarrow>
  (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1a'' ''2'') \<and>
  (\<not> P ''4'' ''1'' \<and> \<not> P ''5c'' ''1'' \<and> \<not> P ''5d'' ''1'' \<and> \<not> P ''5d'' ''2'') \<and>
  \<not> Q ''1a'' ''1'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''2'') \<or>
 (P ''4'' ''2'' \<longrightarrow>
  (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''2'' \<or> Q ''2'' ''1'' \<or> Q ''1a'' ''1'') \<and>
  (\<not> P ''4'' ''1'' \<and> \<not> P ''5c'' ''1'' \<and> \<not> P ''5d'' ''1'' \<and> \<not> P ''5d'' ''2'') \<and>
  \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''1'') \<or>
 (P ''4'' ''2'' \<longrightarrow>
  (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''2'' \<or> Q ''2'' ''1'' \<or> Q ''1a'' ''2'') \<and>
  (\<not> P ''4'' ''1'' \<and> \<not> P ''5c'' ''1'' \<and> \<not> P ''5d'' ''1'' \<and> \<not> P ''5d'' ''2'') \<and>
  \<not> Q ''1a'' ''1'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''1'') \<or>
 (P ''4'' ''2'' \<longrightarrow>
  (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1b'' ''1'') \<and>
  (\<not> P ''4'' ''1'' \<and> \<not> P ''5c'' ''1'' \<and> \<not> P ''5d'' ''1'' \<and> \<not> P ''5d'' ''2'') \<and>
  \<not> Q ''1a'' ''1'' \<and> \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''2'') \<or>
 (P ''4'' ''2'' \<longrightarrow>
  (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1b'' ''2'') \<and>
  (\<not> P ''4'' ''1'' \<and> \<not> P ''5c'' ''1'' \<and> \<not> P ''5d'' ''1'' \<and> \<not> P ''5d'' ''2'') \<and>
  \<not> Q ''1a'' ''1'' \<and> \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''2'') \<or>
 (P ''4'' ''2'' \<longrightarrow>
  (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''2'' \<or> Q ''2'' ''1'' \<or> Q ''1b'' ''1'') \<and>
  (\<not> P ''4'' ''1'' \<and> \<not> P ''5c'' ''1'' \<and> \<not> P ''5d'' ''1'' \<and> \<not> P ''5d'' ''2'') \<and>
  \<not> Q ''1a'' ''1'' \<and> \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''1'') \<or>
 (P ''4'' ''2'' \<longrightarrow>
  (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''2'' \<or> Q ''2'' ''1'' \<or> Q ''1b'' ''2'') \<and>
  (\<not> P ''4'' ''1'' \<and> \<not> P ''5c'' ''1'' \<and> \<not> P ''5d'' ''1'' \<and> \<not> P ''5d'' ''2'') \<and>
  \<not> Q ''1a'' ''1'' \<and> \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''1'') \<or>
 ((P ''5c'' ''1'' \<longrightarrow>
   (Q ''3a'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1a'' ''1'') \<and>
   P ''5d'' ''1'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''2'') \<and>
   \<not> Q ''1a'' ''2'' \<and>
   \<not> Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3b1'' ''1'' \<and> \<not> Q ''3b2'' ''1'' \<and> \<not> Q ''3b2'' ''2'') \<or>
  (P ''5d'' ''1'' \<longrightarrow>
   (Q ''3a'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1a'' ''1'') \<and>
   P ''5c'' ''1'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''2'') \<and>
   \<not> Q ''1a'' ''2'' \<and>
   \<not> Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3b1'' ''1'' \<and> \<not> Q ''3b2'' ''1'' \<and> \<not> Q ''3b2'' ''2'')) \<or>
 ((P ''5c'' ''1'' \<longrightarrow>
   (Q ''3a'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1a'' ''2'') \<and>
   P ''5d'' ''1'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''2'') \<and>
   \<not> Q ''1a'' ''1'' \<and>
   \<not> Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3b1'' ''1'' \<and> \<not> Q ''3b2'' ''1'' \<and> \<not> Q ''3b2'' ''2'') \<or>
  (P ''5d'' ''1'' \<longrightarrow>
   (Q ''3a'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1a'' ''2'') \<and>
   P ''5c'' ''1'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''2'') \<and>
   \<not> Q ''1a'' ''1'' \<and>
   \<not> Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3b1'' ''1'' \<and> \<not> Q ''3b2'' ''1'' \<and> \<not> Q ''3b2'' ''2'')) \<or>
 ((P ''5c'' ''1'' \<longrightarrow>
   (Q ''3a'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1b'' ''1'') \<and>
   P ''5d'' ''1'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''2'') \<and>
   \<not> Q ''1a'' ''1'' \<and>
   \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3b1'' ''1'' \<and> \<not> Q ''3b2'' ''1'' \<and> \<not> Q ''3b2'' ''2'') \<or>
  (P ''5d'' ''1'' \<longrightarrow>
   (Q ''3a'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1b'' ''1'') \<and>
   P ''5c'' ''1'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''2'') \<and>
   \<not> Q ''1a'' ''1'' \<and>
   \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3b1'' ''1'' \<and> \<not> Q ''3b2'' ''1'' \<and> \<not> Q ''3b2'' ''2'')) \<or>
 ((P ''5c'' ''1'' \<longrightarrow>
   (Q ''3a'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1b'' ''2'') \<and>
   P ''5d'' ''1'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''2'') \<and>
   \<not> Q ''1a'' ''1'' \<and>
   \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''3b1'' ''1'' \<and> \<not> Q ''3b2'' ''1'' \<and> \<not> Q ''3b2'' ''2'') \<or>
  (P ''5d'' ''1'' \<longrightarrow>
   (Q ''3a'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1b'' ''2'') \<and>
   P ''5c'' ''1'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''2'') \<and>
   \<not> Q ''1a'' ''1'' \<and>
   \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''3b1'' ''1'' \<and> \<not> Q ''3b2'' ''1'' \<and> \<not> Q ''3b2'' ''2'')) \<or>
 ((P ''5c'' ''1'' \<longrightarrow>
   (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1a'' ''1'') \<and>
   P ''5d'' ''1'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''2'') \<and>
   \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''2'') \<or>
  (P ''5d'' ''1'' \<longrightarrow>
   (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1a'' ''1'') \<and>
   P ''5c'' ''1'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''2'') \<and>
   \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''2'')) \<or>
 ((P ''5c'' ''1'' \<longrightarrow>
   (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1a'' ''2'') \<and>
   P ''5d'' ''1'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''2'') \<and>
   \<not> Q ''1a'' ''1'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''2'') \<or>
  (P ''5d'' ''1'' \<longrightarrow>
   (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1a'' ''2'') \<and>
   P ''5c'' ''1'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''2'') \<and>
   \<not> Q ''1a'' ''1'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''2'')) \<or>
 ((P ''5c'' ''1'' \<longrightarrow>
   (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''2'' \<or> Q ''2'' ''1'' \<or> Q ''1a'' ''1'') \<and>
   P ''5d'' ''1'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''2'') \<and>
   \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''1'') \<or>
  (P ''5d'' ''1'' \<longrightarrow>
   (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''2'' \<or> Q ''2'' ''1'' \<or> Q ''1a'' ''1'') \<and>
   P ''5c'' ''1'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''2'') \<and>
   \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''1'')) \<or>
 ((P ''5c'' ''1'' \<longrightarrow>
   (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''2'' \<or> Q ''2'' ''1'' \<or> Q ''1a'' ''2'') \<and>
   P ''5d'' ''1'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''2'') \<and>
   \<not> Q ''1a'' ''1'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''1'') \<or>
  (P ''5d'' ''1'' \<longrightarrow>
   (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''2'' \<or> Q ''2'' ''1'' \<or> Q ''1a'' ''2'') \<and>
   P ''5c'' ''1'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''2'') \<and>
   \<not> Q ''1a'' ''1'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''1'')) \<or>
 ((P ''5c'' ''1'' \<longrightarrow>
   (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1b'' ''1'') \<and>
   P ''5d'' ''1'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''2'') \<and>
   \<not> Q ''1a'' ''1'' \<and> \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''2'') \<or>
  (P ''5d'' ''1'' \<longrightarrow>
   (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1b'' ''1'') \<and>
   P ''5c'' ''1'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''2'') \<and>
   \<not> Q ''1a'' ''1'' \<and> \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''2'')) \<or>
 ((P ''5c'' ''1'' \<longrightarrow>
   (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1b'' ''2'') \<and>
   P ''5d'' ''1'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''2'') \<and>
   \<not> Q ''1a'' ''1'' \<and> \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''2'') \<or>
  (P ''5d'' ''1'' \<longrightarrow>
   (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1b'' ''2'') \<and>
   P ''5c'' ''1'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''2'') \<and>
   \<not> Q ''1a'' ''1'' \<and> \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''2'')) \<or>
 ((P ''5c'' ''1'' \<longrightarrow>
   (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''2'' \<or> Q ''2'' ''1'' \<or> Q ''1b'' ''1'') \<and>
   P ''5d'' ''1'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''2'') \<and>
   \<not> Q ''1a'' ''1'' \<and> \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''1'') \<or>
  (P ''5d'' ''1'' \<longrightarrow>
   (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''2'' \<or> Q ''2'' ''1'' \<or> Q ''1b'' ''1'') \<and>
   P ''5c'' ''1'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''2'') \<and>
   \<not> Q ''1a'' ''1'' \<and> \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''1'')) \<or>
 ((P ''5c'' ''1'' \<longrightarrow>
   (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''2'' \<or> Q ''2'' ''1'' \<or> Q ''1b'' ''2'') \<and>
   P ''5d'' ''1'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''2'') \<and>
   \<not> Q ''1a'' ''1'' \<and> \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''1'') \<or>
  (P ''5d'' ''1'' \<longrightarrow>
   (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''2'' \<or> Q ''2'' ''1'' \<or> Q ''1b'' ''2'') \<and>
   P ''5c'' ''1'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''2'') \<and>
   \<not> Q ''1a'' ''1'' \<and> \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''1'')) \<or>
 ((P ''5c'' ''1'' \<longrightarrow>
   (Q ''3a'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1a'' ''1'') \<and>
   P ''5d'' ''2'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''1'') \<and>
   \<not> Q ''1a'' ''2'' \<and>
   \<not> Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3b1'' ''1'' \<and> \<not> Q ''3b2'' ''1'' \<and> \<not> Q ''3b2'' ''2'') \<or>
  (P ''5d'' ''2'' \<longrightarrow>
   (Q ''3a'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1a'' ''1'') \<and>
   P ''5c'' ''1'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''1'') \<and>
   \<not> Q ''1a'' ''2'' \<and>
   \<not> Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3b1'' ''1'' \<and> \<not> Q ''3b2'' ''1'' \<and> \<not> Q ''3b2'' ''2'')) \<or>
 ((P ''5c'' ''1'' \<longrightarrow>
   (Q ''3a'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1a'' ''2'') \<and>
   P ''5d'' ''2'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''1'') \<and>
   \<not> Q ''1a'' ''1'' \<and>
   \<not> Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3b1'' ''1'' \<and> \<not> Q ''3b2'' ''1'' \<and> \<not> Q ''3b2'' ''2'') \<or>
  (P ''5d'' ''2'' \<longrightarrow>
   (Q ''3a'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1a'' ''2'') \<and>
   P ''5c'' ''1'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''1'') \<and>
   \<not> Q ''1a'' ''1'' \<and>
   \<not> Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3b1'' ''1'' \<and> \<not> Q ''3b2'' ''1'' \<and> \<not> Q ''3b2'' ''2'')) \<or>
 ((P ''5c'' ''1'' \<longrightarrow>
   (Q ''3a'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1b'' ''1'') \<and>
   P ''5d'' ''2'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''1'') \<and>
   \<not> Q ''1a'' ''1'' \<and>
   \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3b1'' ''1'' \<and> \<not> Q ''3b2'' ''1'' \<and> \<not> Q ''3b2'' ''2'') \<or>
  (P ''5d'' ''2'' \<longrightarrow>
   (Q ''3a'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1b'' ''1'') \<and>
   P ''5c'' ''1'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''1'') \<and>
   \<not> Q ''1a'' ''1'' \<and>
   \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3b1'' ''1'' \<and> \<not> Q ''3b2'' ''1'' \<and> \<not> Q ''3b2'' ''2'')) \<or>
 ((P ''5c'' ''1'' \<longrightarrow>
   (Q ''3a'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1b'' ''2'') \<and>
   P ''5d'' ''2'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''1'') \<and>
   \<not> Q ''1a'' ''1'' \<and>
   \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''3b1'' ''1'' \<and> \<not> Q ''3b2'' ''1'' \<and> \<not> Q ''3b2'' ''2'') \<or>
  (P ''5d'' ''2'' \<longrightarrow>
   (Q ''3a'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1b'' ''2'') \<and>
   P ''5c'' ''1'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''1'') \<and>
   \<not> Q ''1a'' ''1'' \<and>
   \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''3b1'' ''1'' \<and> \<not> Q ''3b2'' ''1'' \<and> \<not> Q ''3b2'' ''2'')) \<or>
 ((P ''5c'' ''1'' \<longrightarrow>
   (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1a'' ''1'') \<and>
   P ''5d'' ''2'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''1'') \<and>
   \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''2'') \<or>
  (P ''5d'' ''2'' \<longrightarrow>
   (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1a'' ''1'') \<and>
   P ''5c'' ''1'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''1'') \<and>
   \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''2'')) \<or>
 ((P ''5c'' ''1'' \<longrightarrow>
   (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1a'' ''2'') \<and>
   P ''5d'' ''2'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''1'') \<and>
   \<not> Q ''1a'' ''1'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''2'') \<or>
  (P ''5d'' ''2'' \<longrightarrow>
   (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1a'' ''2'') \<and>
   P ''5c'' ''1'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''1'') \<and>
   \<not> Q ''1a'' ''1'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''2'')) \<or>
 ((P ''5c'' ''1'' \<longrightarrow>
   (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''2'' \<or> Q ''2'' ''1'' \<or> Q ''1a'' ''1'') \<and>
   P ''5d'' ''2'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''1'') \<and>
   \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''1'') \<or>
  (P ''5d'' ''2'' \<longrightarrow>
   (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''2'' \<or> Q ''2'' ''1'' \<or> Q ''1a'' ''1'') \<and>
   P ''5c'' ''1'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''1'') \<and>
   \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''1'')) \<or>
 ((P ''5c'' ''1'' \<longrightarrow>
   (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''2'' \<or> Q ''2'' ''1'' \<or> Q ''1a'' ''2'') \<and>
   P ''5d'' ''2'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''1'') \<and>
   \<not> Q ''1a'' ''1'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''1'') \<or>
  (P ''5d'' ''2'' \<longrightarrow>
   (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''2'' \<or> Q ''2'' ''1'' \<or> Q ''1a'' ''2'') \<and>
   P ''5c'' ''1'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''1'') \<and>
   \<not> Q ''1a'' ''1'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''1'')) \<or>
 ((P ''5c'' ''1'' \<longrightarrow>
   (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1b'' ''1'') \<and>
   P ''5d'' ''2'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''1'') \<and>
   \<not> Q ''1a'' ''1'' \<and> \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''2'') \<or>
  (P ''5d'' ''2'' \<longrightarrow>
   (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1b'' ''1'') \<and>
   P ''5c'' ''1'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''1'') \<and>
   \<not> Q ''1a'' ''1'' \<and> \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''2'')) \<or>
 ((P ''5c'' ''1'' \<longrightarrow>
   (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1b'' ''2'') \<and>
   P ''5d'' ''2'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''1'') \<and>
   \<not> Q ''1a'' ''1'' \<and> \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''2'') \<or>
  (P ''5d'' ''2'' \<longrightarrow>
   (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''1'' \<or> Q ''2'' ''1'' \<or> Q ''1b'' ''2'') \<and>
   P ''5c'' ''1'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''1'') \<and>
   \<not> Q ''1a'' ''1'' \<and> \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''2'')) \<or>
 ((P ''5c'' ''1'' \<longrightarrow>
   (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''2'' \<or> Q ''2'' ''1'' \<or> Q ''1b'' ''1'') \<and>
   P ''5d'' ''2'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''1'') \<and>
   \<not> Q ''1a'' ''1'' \<and> \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''1'') \<or>
  (P ''5d'' ''2'' \<longrightarrow>
   (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''2'' \<or> Q ''2'' ''1'' \<or> Q ''1b'' ''1'') \<and>
   P ''5c'' ''1'' \<and>
   (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''1'') \<and>
   \<not> Q ''1a'' ''1'' \<and> \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''2'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''1'')) \<or>
 (P ''5c'' ''1'' \<longrightarrow>
  (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''2'' \<or> Q ''2'' ''1'' \<or> Q ''1b'' ''2'') \<and>
  P ''5d'' ''2'' \<and>
  (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''1'') \<and>
  \<not> Q ''1a'' ''1'' \<and> \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''1'') \<or>
 (P ''5d'' ''2'' \<longrightarrow>
  (Q ''3b1'' ''1'' \<and> Q ''3b2'' ''2'' \<or> Q ''2'' ''1'' \<or> Q ''1b'' ''2'') \<and>
  P ''5c'' ''1'' \<and>
  (\<not> P ''4'' ''1'' \<and> \<not> P ''4'' ''2'' \<and> \<not> P ''5d'' ''1'') \<and>
  \<not> Q ''1a'' ''1'' \<and> \<not> Q ''1a'' ''2'' \<and> \<not> Q ''1b'' ''1'' \<and> \<not> Q ''3a'' ''1'' \<and> \<not> Q ''3b2'' ''1''))
"
  by force

lemma equations: "
(\<exists>connector\<in>set BIP_Connector.\<exists>sync\<in>set (fst connector).(P (fst sync) (snd sync) \<longrightarrow> ((\<exists>trig\<in>set (snd connector).\<forall>elm\<in>set trig. Q (fst elm) (snd elm)) 
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
\<and> (\<forall>i \<in> set test_triggers. \<forall>v \<in> set i. \<forall>k \<in> set v. \<exists>h \<in> set (snd k).\<forall>h1 \<in> set (snd k) - {h}. \<not> Q (fst k) h1))
"
  sledgehammer [isar_proofs, timeout = 300
end