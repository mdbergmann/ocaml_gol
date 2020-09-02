open OUnit2
open Lib.Grid

let test_grid_empty = []
let test_grid_1 = [[0]]
let test_grid_2 = [[0; 0;];
                   [0; 0;]]
let test_grid_3 = [[0; 1;];
                   [1; 1;]]

let alive_neighbours_test _ =
  assert_equal 0 (alive_neighbours test_grid_empty 0 0);
  assert_equal 0 (alive_neighbours test_grid_1 0 0);
  assert_equal 0 (alive_neighbours test_grid_2 0 0);
  assert_equal 3 (alive_neighbours test_grid_3 0 0);
  assert_equal 2 (alive_neighbours test_grid_3 0 1);
  assert_equal 2 (alive_neighbours test_grid_3 1 0);
  assert_equal 2 (alive_neighbours test_grid_3 1 1)

let tests =
  "Grid tests" >:::
    [
      "alive_neighbours_test" >:: alive_neighbours_test;
    ]
