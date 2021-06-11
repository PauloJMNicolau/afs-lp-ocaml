let list1 = [2; 4; 6; 10; 15; 16; 20];;
let list2 = [1; 5; 3; 11; 15; 18; 21];;

let maior num1 num2 = (
  if num1 == num2 then
    0
  else if num1 > num2 then
    num1
  else
    num2
);;

let obterLista  list1  list2 = (
  let list =[] in 
  let rec preencher list1 list2 = (
    match list1 with
    | [] -> []
    | hl1::tl1 ->
      match list2 with
      | [] -> []
      | hl2::tl2 -> (
        (maior hl1 hl2)::(preencher tl1 tl2)
      )
  ) in list@(preencher list1 list2)
);;

let list = obterLista list1 list2;;

let rec resultados list = (
  match list with
  | [] -> []                                                            
  | h::t -> print_int h; print_char ' ';
  resultados t                              
);;

(resultados list);;