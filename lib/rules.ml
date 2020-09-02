type alive_state = Alive | Dead

let is_alive neighbours state =
  match neighbours with
  | n when n < 2 -> false
  | n when (n = 2 || n = 3) && state = Alive -> true
  | 3 -> true
  | _ -> false
