theory libs_functions
  imports Main
begin

(*----looking up functions-------------------------------------------------------*)
fun lookup_1 :: "string \<Rightarrow> (string * string list) list \<Rightarrow> string list" where
"lookup_1 k [] = []" |
"lookup_1 k (x#xs) = (if fst x = k then (snd x) else lookup_1 k xs)"

fun lookup_2 :: "string \<Rightarrow> (string * string list) list list \<Rightarrow> string list" where
"lookup_2 k [] = []" |
"lookup_2 k (x#xs) = (lookup_1 k x) @ (lookup_2 k xs)"

fun lookup_3 :: "string \<Rightarrow> (string * string list) list list list \<Rightarrow> string list" where
"lookup_3 k [] = []" |
"lookup_3 k (x#xs) = (lookup_2 k x) @ (lookup_3 k xs)"

(*----making betaSet functions-------------------------------------------------------*)
fun mk_pair :: "string \<Rightarrow> string list \<Rightarrow> (string * string) list" where
"mk_pair k [] = []" |
"mk_pair k (x#xs) = [(k, x)] @ mk_pair k xs"

fun mk_pair_1 :: "(string * string list) \<Rightarrow> (string * string) list" where
"mk_pair_1 k = mk_pair (fst k) (snd k)"

fun mk_pair_2 :: "(string * string list) list \<Rightarrow> (string * string) list list" where
"mk_pair_2 [] = []" |
"mk_pair_2 (x#xs) = [mk_pair_1 x] @ mk_pair_2 xs"

fun mk_pair_3 :: "(string * string list) list list \<Rightarrow> (string * string) list list list" where
"mk_pair_3 [] = []" |
"mk_pair_3 (x#xs) = [product_lists (mk_pair_2 x)] @ mk_pair_3 xs"

fun merge_list :: "('a list \<times> 'a list) list \<Rightarrow> 'a list list" where 
"merge_list []= []" |
"merge_list (x#xs) = [(fst x)@(snd x)] @ (merge_list xs)"

(*Chuyen tu list cac synchron de tao beta set*)
fun make_betaSet_1 :: "(string * string list) list list list \<Rightarrow> (string * string) list list list" where
"make_betaSet_1 [] = []" |
"make_betaSet_1 (x#[]) =  (product_lists (mk_pair_3 x))" |
"make_betaSet_1 (x#y#[]) = merge_list (List.product ( (product_lists (mk_pair_3 x))) ( (product_lists (mk_pair_3 y))))" |
"make_betaSet_1 (x#y#xs) = merge_list (List.product (merge_list (List.product ((product_lists (mk_pair_3 x))) ((product_lists (mk_pair_3 y))))) (make_betaSet_1 xs))"

definition test_triggers :: "(string * string list) list list list" where
"test_triggers = [[[(''1a'',[''1'',''2''])], [(''1b'',[''1'',''2''])]],
[[(''2'',[''1''])]],
[[(''3a'',[''1''])], [(''3b1'',[''1'']),(''3b2'',[''1'',''2''])]]
]"

definition test_triggers_null :: "(string * string list) list list list" where
"test_triggers_null = [[[]]]"

definition test_synchron :: "(string * string list) list list list" where
"test_synchron = [ [[(''4'', [''1'',''2''])]],
[[(''5c'',[''1'']),(''5d'',[''1'',''2''])]]
]"

value "make_betaSet_1 test_triggers"
value "make_betaSet_1 test_synchron"

(*final: create the connectors: fst: synchron, snd: trigger*)
value "List.product (concat (make_betaSet_1 test_synchron)) (make_betaSet_1 test_triggers)"

(*if trigger null: couldn't be applied*)
value "List.product (concat (make_betaSet_1 test_synchron)) (make_betaSet_1 test_triggers_null)"

(*use this method to generate the connectors*)
value "concat (make_betaSet_1 test_synchron)"

end