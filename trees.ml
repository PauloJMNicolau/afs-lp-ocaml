(*Exercicios 11,12,13,14,15*)
(*Define um tipo de estrutura de arvore*)
type 'a tree = 
  Nil                                 (*Folhas*)
  | Node of 'a * 'a tree * 'a tree    (*Nó*)

  let rec treeToList t = (
  match t with
  | Nil -> []
  | Node (v,l,r) -> [v] @ treeToList l @ treeToList r
);;

(*Calcula altura da árvore*)
let rec height t =(
  match t with
  |Nil -> 0
  |Node (v,l,r) -> 
    if (height l) > (height r) then
      (height l)+1
    else 
      (height r)+1
);;

(*verifica o balanceamento da àrvore*)
let rec balanced t =(
  match t with
  | Nil -> true
  | Node (v,l,r) -> (
      if (((height l)-(height r)) <= 1) && (((height l)-(height r)) >= -1) then
        true && balanced l && balanced r
      else
        false 
    )
);;

(*Arvores de teste *)
(*Cria uma árvore não balanceada*)
let t= 
  Node(1,
    Node(2,
      Node(7,Nil, Nil),
      Nil),
    Node(3,
      Node(9,
        Node(6,Nil, Nil),
        Node(10, Nil,Nil)
      ),
      Nil
    )
  ) ;; 

(*Cria uma árvore balanceada*)
let a =
  Node(3,
    Node(5,Nil,Nil),
    Node(6,Nil,Nil)
  );;

(*Cria uma árvore não balanceada*)
let b = 
  Node(1,
    Nil,
    Node(2,
      Nil,
      Node(3,Nil,Nil)
    )
  );;

(*Cria uma árvore balanceada*)
let c =
  Node(3,
    Node(5,
      Node(7,Nil,Nil),
      Node(8,Nil,Nil)
    ),
    Node(6,
      Node(2,Nil,Nil),
      Nil
    )
  );;


(balanced Nil);;
(balanced a);;
(balanced b);;
(balanced c);;
(balanced t);;