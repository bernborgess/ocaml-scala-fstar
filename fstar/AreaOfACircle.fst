module AreaOfACircle

open FStar.IO

open FStar.All

open FStar.Float

let main: unit -> ML unit =
  fun _ ->
    let r:float = input_float () in
    // Find how to define a float constant
    // let pi:float = 3.14159 in
    // print_string ("X = " ^ string_of_float (pi * r * r) ^ "\n")
    print_string "Not implemented"

let _ = main ()