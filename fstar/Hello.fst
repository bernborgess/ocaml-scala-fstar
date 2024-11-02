module Hello

open FStar.IO
open FStar.All

let main: unit -> ML unit = fun _ -> print_string "Hello, World!\n"

let _ = main ()