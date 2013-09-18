-module(problem4_test).
-include_lib("eunit/include/eunit.hrl").

get_palindromic_test() ->
  ?assertEqual(906609, problem4:get_palindromic(999)).


is_palindromic_test() ->
  ?assertEqual(true, problem4:is_palindromic(3)),
  ?assertEqual(true, problem4:is_palindromic(99)),
  ?assertEqual(false, problem4:is_palindromic(90)),
  ?assertEqual(true, problem4:is_palindromic(999)),
  ?assertEqual(true, problem4:is_palindromic(909)),
  ?assertEqual(false, problem4:is_palindromic(900)),
  ?assertEqual(true, problem4:is_palindromic(9009)),
  ?assertEqual(false, problem4:is_palindromic(9090)).
