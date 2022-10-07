open Funs

(*************************************)
(* Part 2: Three-Way Search Tree *)
(*************************************)

type int_tree =
  | IntLeaf
  | IntNode of int * int option * int_tree * int_tree * int_tree 

let empty_int_tree = IntLeaf

let rec int_insert x t =
  match t with
  (* Case 1: Empty Tree *)
  | IntLeaf -> IntNode(x, None, IntLeaf, IntLeaf, IntLeaf)
  (* Case 2: only left int is filled *)
  | IntNode(lv, None, left, middle, right) ->
    if x < lv then int_insert x left else
      if x > lv then IntNode(lv, Some x, left, middle, right) else
        IntNode(lv, None, left, middle, right)
  (* Case 3: both ints are filled *)
  | IntNode(lv, Some rv, left, middle, right) ->
    if x < lv then int_insert x left else
      if x > rv then int_insert x right else
        if x > lv && x < rv then int_insert x middle else
          IntNode(lv, Some rv, left, middle, right);;

let rec int_mem x t =
  failwith "unimplemented"

let rec int_size t =
  failwith "unimplemented"

let rec int_max t =
  failwith "unimplemented"

(*******************************)
(* Part 3: Three-Way Search Tree-Based Map *)
(*******************************)

type 'a tree_map =
  | MapLeaf
  | MapNode of (int * 'a) * (int * 'a) option * 'a tree_map * 'a tree_map * 'a tree_map

let empty_tree_map = MapLeaf

let rec map_put k v t = 
  failwith "unimplemented"

let rec map_contains k t = 
  failwith "unimplemented"

let rec map_get k t =
  failwith "unimplemented"

(***************************)
(* Part 4: Variable Lookup *)
(***************************)

(* Modify the next line to your intended type *)
type lookup_table = unit

let empty_table : lookup_table = ()

let push_scope (table : lookup_table) : lookup_table = 
  failwith "unimplemented"

let pop_scope (table : lookup_table) : lookup_table =
  failwith "unimplemented"

let add_var name value (table : lookup_table) : lookup_table =
  failwith "unimplemented"

let rec lookup name (table : lookup_table) =
  failwith "unimplemented"
