-module(problem1_test).
-include_lib("eunit/include/eunit.hrl").

multiples_test() ->
  ?assertEqual(23, problem1:multiples(10)),
  ?assertEqual(33, problem1:multiples(11)),
  ?assertEqual(3, problem1:multiples(5)),
  ?assertEqual(3, problem1:multiples(4)).

