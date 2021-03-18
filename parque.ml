
(*Inverter valor negativo*)
let invert valor = (
  if valor < 0 then
    24 + valor
  else
    valor
);;

(*Calcula valor de horas *)
let hora hent hsai = (
  hsai - hent
);;

(*Calcula valor de minutos *)
let min ment msai =(
  msai - ment
);;

(*Soma Preços recursivamente*)
let rec cal tempo = (
  if tempo = 1 then
    120
  else if tempo = 2 then
    140 + cal (tempo-1)
  else if tempo = 3 then
    150 + cal (tempo-1)
  else 
    155 + cal (tempo-1)
);;

(*Retorna valor calculado com base nas horas e minutos *)
let calPreco hora min = (
  if min > 0 then
    cal((hora + 1))
  else
    cal hora
);;

let parque hent ment hsai msai = (
  calPreco (invert (hora hent hsai)) (min ment msai)
);;