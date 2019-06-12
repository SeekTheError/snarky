module Impl = Snarky.Snark.Make (Snarky.Backends.Mnt4.Default)
open Impl

let x = (1, 2, 3)

let f x = x

let (y : int * int * int) = f (1, 2, 3)

let z, x_ =
  ( Field.constant (Field.Constant.of_string "1")
  , Field.constant (Field.Constant.of_string "2") )

let (z : int * _ * _ -> int * int) = fun (x, y_, z_) -> (15, x)
