module ExtremelyBasic

open FStar.IO

open FStar.All

let main: unit -> ML unit =
  fun _ ->
    let a = input_int () in
    let b = input_int () in
    let r = a + b in
    print_string ("X = " ^ string_of_int r ^ "\n")

let _ = main ()