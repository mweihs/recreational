
let foo a =
  let open Dynarray in
  let da = create () in
  let f c =
    match c with
    | "C" -> if length da > 0 then let _ = pop_last da in ()
    | "D" -> add_last da @@ 2 * get_last da
    | "+" ->
        if length da >= 2 then begin
          let a = get_last da in
          let b = get da @@ length da - 2 in
          add_last da (a+b)
        end
    | _ -> add_last da (int_of_string c)
  in
  Array.iter f a;
  Dynarray.fold_left (+) 0 da

let check p = print_endline @@ if p then "OK" else "FAIL"

let () =
  check (30  = foo [|"5";"2";"C";"D";"+"|]);
  check (27  = foo [|"5";"-2";"4";"C";"D";"9";"+";"+"|]);
  check (45  = foo [|"7";"D";"D";"C";"+";"3"|]);
  check (-55 = foo [|"-5";"-10";"+";"D";"C";"+"|]);
  check (128 = foo [|"3";"6";"+";"D";"C";"8";"+";"D";"-2";"C";"+"|])
