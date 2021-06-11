type 'a tree = 
  Nil                                 (*Folhas*)
  | Node of 'a * 'a tree * 'a tree    (*Nó*)
;;

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

let rec soma tree sum = (
  match tree with
  | Nil -> 0
  | Node (v,l,r) -> (
    sum + v + (soma l sum) + (soma r sum)
  )
);;

let somas = soma c 0;;

print_string("Soma=");;
print_int(somas);;