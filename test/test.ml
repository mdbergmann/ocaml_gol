(*
  test suite
*)

open OUnit2

let () =
  run_test_tt_main
    ("all-tests" >:::
       [Rules_test.tests;])
