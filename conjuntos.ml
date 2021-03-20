(*Exercicio 10*)
(*Verifica se valor x pertence à lista*)
let rec belongs x lista = (
  match lista with
  | [] -> false         (*retorna false se chegar ao fim da lista ou for lista vazia*)
  | h::t -> 
    if h=x then
      true              (*retorna true se pertencer*)
    else
      belongs x t       (*Executa recuersivamente com o valor x e a cauda da lista*)
);;

(belongs 4 [1;2;3;4;5;6]);; (*retorna true*)
(belongs 4 [1;2]);; (*Retorna false*)

(*Cria o conjunto de união de ambos os conjuntos*)
let rec union  lista1 lista2 =(
  match lista2 with
  | [] -> lista1                  (*Retorna a lista final*)
  | h::t ->
    if (belongs h lista1) then    (*Verifica se o elemento atual da lista2 está na lista1*)
      (union lista1 t)            (*Executa recursivamente com a lista1 e a cauda da lista2*)
    else
      (union (lista1@[h]) t)      (*Adiciona o elemento da cabeça da lista2 a uma nova lista1 e executa recursivamente a nova lista1 e a cauda da lista2*)
);;

(union [7;3;9] [2;1;9]);;     (*Retorna [7;3;9;2;1]*)

(*Retorna o conjunto interceção de ambos os elementos da lista*)
let rec inter lista1 lista2 =(
  match lista2 with
  | [] -> []                      (*Retorna a lista vazia no final*)
  | h::t ->
    if (belongs h lista1) then    (*Verifica se o elemento atual da lista2 está na lista1*)
      h::(inter lista1 t)         (*Cria uma nova lista com a cabeça em que a cauda será o resultado retornado da execução recursiva com a lista1 e a cauda da lista2*)
    else
      (inter lista1 t)            (*Executa recursivamente com a lista1 e a cauda da lista2*)
);;

(inter [7;3;9] [2;1;9]);;   (*Retorna [9]*)

(*Retorna os elementos do conjunto lista1 que são diferentes dos elementos no conjunto lista2*)
let rec diff lista1 lista2 =(
  match lista1 with
  | [] -> []                      (*Retorna a lista vazia no final*)
  | h::t ->
    if (belongs h lista2) then    (*Verifica se o elemento atual da lista1 está na lista2*)
      (diff t lista2)             (*Executa recursivamente com a lista2 e a cauda da lista1*)
    else
      h::(diff t lista2)          (*Cria uma nova lista com a cabeça em que a cauda será o resultado retornado da execução recursiva com a lista2 e a cauda da lista1*)
);;

(diff [7;3;9] [2;1;9]);;   (*Retorna [7;3]*)

let rec calcPower lista x =(
  match lista with
  | [] -> [lista]
  | h::t -> [h]::(
      diff lista [h]
    )::(calcPower lista (List.hd (List.tl lista)))
);;
let rec power lista = (
  lista::(match lista with
    | [] -> []
    | h::t -> [h]::(
        match t with
        | [] -> []
        | hd::tl -> h::[(power tl)]
      )::(power (List.tl lista))
  )
);;



(power [1;2]);;
(power [1;2;3]);;