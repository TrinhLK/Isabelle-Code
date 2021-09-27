theory compare_test
  imports Main 
begin

declare [[smt_timeout = 100000000]]
declare [[cvc4_options = "--full-saturate-quant --inst-when=full-last-call --inst-no-entail --term-db-mode=relevant --multi-trigger-linear"]]
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


end