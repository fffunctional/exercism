module SumOfMultiples

let sum (numbers: int list) (upperBound: int): int =
   [1 .. upperBound - 1]
   |> List.filter (fun x ->
      List.map (fun n -> x % n = 0) numbers
      |> List.contains true
   )
   |> List.sum
