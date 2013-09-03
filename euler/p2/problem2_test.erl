-module(problem2_test).
-include_lib("eunit/include/eunit.hrl").

even_test() ->
  ?assertEqual(10, problem2:even(10)),
  ?assertEqual(44, problem2:even(100)),
  ?assertEqual(4613732, problem2:even(4000000)).
