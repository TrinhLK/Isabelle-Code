theory test_lib
  imports Main
begin
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

fun mk_pair_4 :: "(string * string list) list list list \<Rightarrow> (string * string) list list list " where
"mk_pair_4 [] = []" |
"mk_pair_4 (x#xs) = (product_lists (mk_pair_3 x)) @ mk_pair_4 xs"

fun reduce_dimension :: "(string * string) list list \<Rightarrow> (string * string) list" where
"reduce_dimension [] = []" |
"reduce_dimension (x#xs) = x @ reduce_dimension xs"

fun merge_list :: "('a list \<times> 'a list) list \<Rightarrow> 'a list list" where 
"merge_list []= []" |
"merge_list (x#xs) = [(fst x)@(snd x)] @ (merge_list xs)"

definition test_Type_Ins_list_list_1 :: "(string * string list) list list" where
"test_Type_Ins_list_list_1 = [[(''1a'',[''1'',''2''])], [(''1b'',[''1'',''2''])]]"
definition test_Type_Ins_list_list_2 :: "(string * string list) list list" where
"test_Type_Ins_list_list_2 = [[(''2'',[''1''])]]"
definition test_Type_Ins_list_list_3 :: "(string * string list) list list" where
"test_Type_Ins_list_list_3 = [[(''3a'',[''1''])], [(''3b1'',[''1'']),(''3b2'',[''1'',''2''])]]"


value "mk_pair_3 test_Type_Ins_list_list_1"
value "product_lists (mk_pair_3 test_Type_Ins_list_list_1)"
value "mk_pair_3 test_Type_Ins_list_list_2"
value "product_lists (mk_pair_3 test_Type_Ins_list_list_2)"
value "mk_pair_3 test_Type_Ins_list_list_3"
value "product_lists (mk_pair_3 test_Type_Ins_list_list_3)"
value "concat (product_lists (mk_pair_3 test_Type_Ins_list_list_3))"

value "merge_list (List.product (concat (product_lists (mk_pair_3 test_Type_Ins_list_list_1))) (concat (product_lists (mk_pair_3 test_Type_Ins_list_list_3))))"

value "merge_list (List.product (concat (product_lists (mk_pair_3 test_Type_Ins_list_list_1))) (merge_list (List.product (concat (product_lists (mk_pair_3 test_Type_Ins_list_list_2))) (concat (product_lists (mk_pair_3 test_Type_Ins_list_list_3))))))"

(*Chuyen tu list cac synchron de tao beta set*)
fun make_betaSet :: "(string * string list) list list list \<Rightarrow> (string * string) list list" where
"make_betaSet [] = []" |
"make_betaSet (x#[]) = concat (product_lists (mk_pair_3 x))" |
"make_betaSet (x#y#[]) = merge_list (List.product (concat (product_lists (mk_pair_3 x))) (concat (product_lists (mk_pair_3 y))))" |
"make_betaSet (x#y#xs) = merge_list (List.product (merge_list (List.product (concat (product_lists (mk_pair_3 x))) (concat (product_lists (mk_pair_3 y))))) (make_betaSet xs))"

definition test_synchron :: "(string * string list) list list list" where
"test_synchron = [[[(''1a'',[''1'',''2''])], [(''1b'',[''1'',''2''])]],
[[(''2'',[''1''])]],
[[(''3a'',[''1''])], [(''3b1'',[''1'']),(''3b2'',[''1'',''2''])]]
]"

value "make_betaSet test_synchron"
fun mk_beta :: "(string * string) list list list \<Rightarrow> (string * string) list list list" where
"mk_beta [] = []" |
"mk_beta x#[] = []" |
"mk_beta x#y#[] = merge_list (List.product (concat (product_lists (mk_pair_3 x))) (concat (product_lists (mk_pair_3 y))))"
end