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

fun merge_list_new :: "('a list \<times> 'a list) list \<Rightarrow> 'a list list list" where 
"merge_list_new []= []" |
"merge_list_new (x#xs) = [[(fst x)]@[(snd x)]] @ (merge_list_new xs)"

(*Chuyen tu list cac synchron de tao beta set*)
fun make_betaSet :: "(string * string list) list list list \<Rightarrow> (string * string) list list" where
"make_betaSet [] = []" |
"make_betaSet (x#[]) = concat (product_lists (mk_pair_3 x))" |
"make_betaSet (x#y#[]) = merge_list (List.product (concat (product_lists (mk_pair_3 x))) (concat (product_lists (mk_pair_3 y))))" |
"make_betaSet (x#y#xs) = merge_list (List.product (merge_list (List.product (concat (product_lists (mk_pair_3 x))) (concat (product_lists (mk_pair_3 y))))) (make_betaSet xs))"

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

value "make_betaSet test_triggers"
value "make_betaSet_1 test_triggers"
value "make_betaSet_1 test_triggers"
value "make_betaSet_1 test_synchron"

(*final: create the connectors: fst: synchron, snd: trigger*)
value "List.product (concat (make_betaSet_1 test_synchron)) (make_betaSet_1 test_triggers)"

(*if trigger null: couldn't be applied*)
value "List.product (concat (make_betaSet_1 test_synchron)) (make_betaSet_1 test_triggers_null)"

(*use this method to generate the connectors*)
value "concat (make_betaSet_1 test_synchron)"

(*--- test ---*)
definition test_3_triggers :: "(string * string list) list list" where
"test_3_triggers = 
[[(''3a'',[''1''])], [(''3b1'',[''1'']),(''3b2'',[''1'',''2''])]]
"

definition test_1_triggers :: "(string * string list) list list" where
"test_1_triggers = 
[[(''1a'',[''1'',''2''])], [(''1b'',[''1'',''2''])]]
"

definition test_2_triggers :: "(string * string list) list list" where
"test_2_triggers = 
[[(''2'',[''1''])]]
"
definition test_4_triggers :: "(string * string list) list list" where
"test_4_triggers = 
[[(''4'',[''1''])]]
"
value "mk_pair_3 test_1_triggers"

(**)
fun merge_list_new_1 :: "('a list list \<times> 'a list) list \<Rightarrow> 'a list list list" where 
"merge_list_new_1 []= []" |
"merge_list_new_1 (x#xs) = [(fst x)@[(snd x)]] @ (merge_list_new_1 xs)"

value "[[(''1a'', [''1'', ''2''])], [(''2'', [''1''])]]@[[(''3a'', [''1''])]]"
value "List.product test_1_triggers test_2_triggers"
value "List.product (List.product test_1_triggers test_2_triggers) test_3_triggers"

value "merge_list_new (List.product test_1_triggers test_3_triggers)"
value "List.product (merge_list_new (List.product test_1_triggers test_2_triggers)) test_3_triggers"
value "(concat [[(''1a'', [''1'', ''2''])], [(''2'', [''1''])]])@[(''3b1'', [''1'']), (''3b2'', [''1'', ''2''])]"

value " (List.product (merge_list_new (List.product test_1_triggers test_2_triggers)) test_3_triggers)"
value "merge_list_new_1 (List.product (merge_list_new (List.product test_1_triggers test_2_triggers)) test_3_triggers)"

value "(merge_list_new (List.product test_1_triggers test_2_triggers))"
value "[test_3_triggers]"
value "List.product (merge_list_new (List.product test_1_triggers test_2_triggers)) test_3_triggers"
value "(merge_list_new_1 (List.product (merge_list_new (List.product test_1_triggers test_2_triggers)) test_3_triggers))"
value "merge_list_new_1 (List.product (merge_list_new_1 (List.product (merge_list_new (List.product test_1_triggers test_2_triggers)) test_3_triggers)) (test_4_triggers))"

definition beta_1 :: "(string * string list) list list" where
"beta_1 = [[(''1a'', [''1'', ''2'']), (''2'', [''1''])], [(''3b1'', [''1'']), (''3b2'', [''1'', ''2''])]]"
value "List.product_lists (mk_pair_3 beta_1)"

fun make_betaSet_2 :: "(string * string list) list list list \<Rightarrow> (string * string list) list list list" where
"make_betaSet_2 [] = []" |
"make_betaSet_2 (x#[]) =  [x]" |
"make_betaSet_2 (x#y#[]) = merge_list_new (List.product x y)" |
"make_betaSet_2 (x#y#xs) = merge_list_new_1 (List.product (merge_list_new (List.product x y)) (concat (make_betaSet_2 xs)))"

definition test_triggers_1 :: "(string * string list) list list list" where
"test_triggers_1 = [[[(''1a'',[''1'',''2''])], [(''1b'',[''1'',''2''])]],
[[(''2'',[''1''])]],
[[(''3a'',[''1''])], [(''3b1'',[''1'']),(''3b2'',[''1'',''2''])]],
[[(''4'',[''1''])]]
]"

definition test_triggers_2 :: "(string * string list) list list list" where
"test_triggers_2 = [[[(''1a'',[''1'',''2''])], [(''1b'',[''1'',''2''])]],
[[(''2'',[''1''])]],
[[(''3a'',[''1''])], [(''3b1'',[''1'']),(''3b2'',[''1'',''2''])]],
[[(''4'',[''1''])]],
[[(''5a'',[''1''])], [(''5b'',[''6''])]]
]"

value "make_betaSet_2 test_triggers_1"
value "concat (make_betaSet_2 test_triggers_1)"

fun make_betaSet_3 :: "(string * string list) list list list \<Rightarrow> (string * string list) list list list" where
"make_betaSet_3 [] = []" |
"make_betaSet_3 (x#[]) =  [x]" |
"make_betaSet_3 (x#y#[]) = merge_list_new (List.product x y)" |
"make_betaSet_3 (x#y#xs#[]) = merge_list_new_1 (List.product (merge_list_new (List.product y xs)) (x))"|
"make_betaSet_3 (x#y#xs#ys) = merge_list_new_1 (List.product (make_betaSet_3 (y#xs#ys)) (x))"

value "make_betaSet_3 test_triggers"
value "make_betaSet_3 test_triggers_1"
value "make_betaSet_3 test_triggers_2"


value "List.product_lists (mk_pair_3 [[(''4'', [''1''])], [(''5a'', [''1''])], [(''3a'', [''1''])], [(''2'', [''1''])], [(''1a'', [''1'', ''2''])]])"

fun mk_pair_4 :: "(string * string list) list list list \<Rightarrow> (string * string) list list list" where
"mk_pair_4 [] = []" |
"mk_pair_4 (x#xs) = product_lists (mk_pair_3 x) @ mk_pair_4 xs"

value "mk_pair_4 (make_betaSet_3 test_triggers_2)"
value "List.product_lists (mk_pair_3 (make_betaSet_2 test_triggers))"
(*--000-*)
value "product_lists (mk_pair_3 test_1_triggers)"
value "product_lists (mk_pair_3 test_3_triggers)"
value "List.product (concat (product_lists (mk_pair_3 test_1_triggers))) (concat (product_lists (mk_pair_3 test_3_triggers)))"
value "merge_list_new (List.product (concat (product_lists (mk_pair_3 test_1_triggers))) (concat (product_lists (mk_pair_3 test_3_triggers))))"
value "merge_list_new (List.product (concat (product_lists (mk_pair_3 test_1_triggers))) (concat (product_lists (mk_pair_3 test_3_triggers))))"
value "List.product (merge_list_new (List.product (concat (product_lists (mk_pair_3 test_1_triggers))) (concat (product_lists (mk_pair_3 test_3_triggers))))) (product_lists (mk_pair_3 test_2_triggers))"
value "merge_list_new (List.product (concat (merge_list_new (List.product (concat (product_lists (mk_pair_3 test_1_triggers))) (concat (product_lists (mk_pair_3 test_2_triggers)))))) (concat (product_lists (mk_pair_3 test_3_triggers))))"

(*Chuyen tu list cac synchron de tao beta set*)
fun make_betaSet_2 :: "(string * string list) list list list \<Rightarrow> (string * string) list list list" where
"make_betaSet_2 [] = []" |
"make_betaSet_2 (x#[]) =  (product_lists (mk_pair_3 x))" |
"make_betaSet_2 (x#y#[]) = merge_list_new (List.product (concat (product_lists (mk_pair_3 x))) (concat (product_lists (mk_pair_3 y))))" |
"make_betaSet_2 (x#y#xs) = merge_list (List.product (merge_list_new (List.product (concat (product_lists (mk_pair_3 x))) (concat (product_lists (mk_pair_3 y))))) (make_betaSet_2 xs))"

value "make_betaSet_2 test_triggers"
(*--001-*)
value "concat (product_lists (mk_pair_3 test_1_triggers))"
value "concat (product_lists (mk_pair_3 test_3_triggers))"
value "List.product (concat (product_lists (mk_pair_3 test_1_triggers))) (concat (product_lists (mk_pair_3 test_3_triggers)))"
value "merge_list (List.product (concat (product_lists (mk_pair_3 test_1_triggers))) (concat (product_lists (mk_pair_3 test_3_triggers))))"
value "concat (merge_list (List.product (concat (product_lists (mk_pair_3 test_1_triggers))) (concat (product_lists (mk_pair_3 test_3_triggers)))))"
value "concat (product_lists (mk_pair_3 test_1_triggers))"
value "concat (product_lists (mk_pair_3 test_3_triggers))"
end