open OUnit2
open Lib.Rules

let living_less_than_2 _ =
  assert_equal Dead (is_alive 0 Alive);
  assert_equal Dead (is_alive 1 Alive)

let living_2_or_3_survives _ =
  assert_equal Alive (is_alive 2 Alive);
  assert_equal Alive (is_alive 3 Alive)

let living_more_than_3_dies _ =
  assert_equal Dead (is_alive 4 Alive);
  assert_equal Dead (is_alive 5 Alive)

let dead_3_becomes_alive _ =
  assert_equal Alive (is_alive 3 Dead)

let tests =
  "Rules tests" >:::
    [
      "living_less_than_2" >:: living_less_than_2;
      "living_2_or_3_survives" >:: living_2_or_3_survives;
      "living_more_than_3_dies" >:: living_more_than_3_dies;
      "dead_3_becomes_alive" >:: dead_3_becomes_alive;
    ]

