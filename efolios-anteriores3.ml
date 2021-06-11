type tree = 
  Leaf                                 
  | Node of int * tree * tree 
;;

let c =
  Node(5,
    Node(3,
      Node(2,Leaf,Leaf),
      Node(4,Leaf,Leaf)
    ),
    Node(8,
      Node(7,Leaf,Leaf),
      Node(9,Leaf,Leaf)
    )
  );;

  let rec preencher tree list = (
  match tree with
  | Leaf -> [] 
  | Node (v,l,r) -> (
    if ((l == Leaf) && (r == Leaf)) then
      list@[v]
    else 
      (preencher l (preencher r list))
  )
);;

let rec resultados list = (
  match list with
  | [] -> []                                                            
  | h::t -> print_int h; print_char ' ';
  resultados t                              
);;

(resultados (preencher c []));;