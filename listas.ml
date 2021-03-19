(*Exercicio 8*)

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
  match lista with
  |[] -> ""
  |h::t -> h ^ (concat t)
);;

(len [1;1;2;3;4;1]);;
(sum [1;1;2;3;4;1]);;
(concat ["ola";"";"ole"]);;
