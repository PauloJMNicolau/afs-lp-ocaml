(*Exercicio 8,9,10*)

(*Conta os elementos da lista*)
let rec len lista = (
  match lista with    (*Verifica se a lista: *)
  | [] -> 0           (*está vazia - retorna 0*)
  | h::t -> 1 + len t (*tem elementos - soma 1 e chama recursivamente a função com a cauda da lista*)
);;

(*Soma os elementos da lista*)
let rec sum lista =(
  match lista with      (*Verifica se a lista: *)
  |[] -> 0              (*está vazia - retorna 0*)
  | h::t -> h + sum t   (*tem elementos - soma o valor que está na cabeça e chama recursivamente a função com a cauda da lista*)
);;

(*Concatenar Listas*)
let rec concat lista =(
  match lista with        (*Verifica se a lista: *)
  |[] -> ""               (*está vazia - retorna string vazia*)
  |h::t -> h ^ (concat t) (*tem elementos -concatena valor da cabeça com valor retornado da execuçãp recursiva com a cauda da lista*)
);;

(len [1;1;2;3;4;1]);; (*Retorna 6*)
(sum [1;1;2;3;4;1]);; (*Retorna 12*)
(concat ["ola";"";"ole"]);; (*Retorna "olaole"*)

(*Exercicio 9*)
(*Retorna uma lista com os valores sucessivos dos valores da lista de entrada*)
let rec succAll lista =(
  match lista with              (*Verifica se a lista: *)
  |[] -> []                     (*está vazia - retorna string vazia*)
  | h::t -> (h+1)::(succAll t)  (*tem elementos - incrementa valor da cabeça da lista e adiciona ao valor retornado da execução recursiva*)
);;

(succAll[]);;         (*Retorna lista vazia*)
(succAll[3;6;1;0;-4]);; (*Retorna [4,7,2;1;-3]*)