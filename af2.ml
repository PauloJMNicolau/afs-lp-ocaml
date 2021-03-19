(*Exercicio 2*)
(*Calculo do Fatorial de x*)
let rec fact x = (
  if x=0 
    then 1 
  else x*fact(x-1)
);;