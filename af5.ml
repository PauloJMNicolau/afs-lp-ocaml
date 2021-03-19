(*Exercicio 5*)
(* cria variavel n e atribui valor 4 *)
let n=4;;

(*Define função g que recebe valor x e retorna o valor de x somado com o valor de n*)
let g x = x + n;;

(*executa função g com o valor 0 como parametro
retorna valor 4 [0+4] como resultado*)
g 0;;

(*Redeclara variável n para o valor 5*)
let n= 5;;

(*executa função g com o valor 0 como parametro
retorna valor 4 [0+4] como resultado
o valor deve-se a quando g foi declarado n tinha valor 4
logo a função g foi declarado como sendo g=x+4 *)
g 0;;

(*Retorna o valor de n*)
n;;

let rec loop x = loop x;;

(fun x -> 5) (loop 3);;