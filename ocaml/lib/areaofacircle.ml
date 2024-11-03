let solve () =
  let r = read_float () in
  let pi = 3.14159 in
  let a =  pi *. r *. r in
  Printf.printf "A=%.4f\n" a

(* Or use Float.mul *)