(*Exercicio 4*)
(*Verifica o tipo de triangulo formado pelos valores de a,b,c*)
let tri a b c = (
  if (a < (b + c) || b > (a+c)) || c > (a+b) then
    0
  else if ((a = b) && (a = c)) && b = c then
    1
  else if (a = b || a = c) || b = c then
    2
  else
    3
);;