-module(problem6_test).
-include_lib("eunit/include/eunit.hrl").

foo_test() ->
      ?assertEqual(2640, problem6:get_sum(10)),
      ?assertEqual(25164150, problem6:get_sum(100)).
