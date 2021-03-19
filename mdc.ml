(*Exercicio 7*)
(*Calcular Máximo Divisor Comum*)
let rec mdc a b = (
  if b = 0 then
    a
  else
    mdc b (a mod b)
);;