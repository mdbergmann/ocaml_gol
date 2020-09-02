
let get_grid_value grid row col =
  if row < 0 then 0
  else if col < 0 then 0
  else if row >= List.length grid then 0
  else if col >= List.length grid then 0
  else (List.nth (List.nth grid row) col)

let alive_neighbours grid row col =
  match grid with
  | [] -> 0
  | g -> List.fold_left
           (fun acc x -> acc+x)
           0
           [get_grid_value g (row-1) (col-1);
            get_grid_value g (row-1) col;
            get_grid_value g (row-1) (col+1);

            get_grid_value g row (col-1);
            get_grid_value g row (col+1);

            get_grid_value g (row+1) (col-1);
            get_grid_value g (row+1) col;
            get_grid_value g (row+1) (col+1)]

