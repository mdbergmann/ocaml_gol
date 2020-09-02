type alive_state = Alive | Dead

let is_alive neighbours state =
  match neighbours with
  | n when n < 2 -> Dead
  | n when (n = 2 || n = 3) && state = Alive -> Alive
  | 3 -> Alive
  | _ -> Dead
