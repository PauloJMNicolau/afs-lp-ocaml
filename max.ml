(*Função polimorfica que retorna um dos dados recebidos que possua o maior valor na tabela ASCII*)
let max a b = if a > b then a else b;;

(*Retorna 7 como valor maior*)
(max 3 7);;

(*Retorna 4.5 como valor maior*)
(max 4.5 1.2);;

(*Retorna "ole" como valor maior*)
(max "ola" "ole");;