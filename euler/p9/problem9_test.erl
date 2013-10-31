-module(problem9_test).
-include_lib("eunit/include/eunit.hrl").

is_pythagorean_test() -> 
  ?assertEqual(true, problem9:is_pythagorean(3, 4, 5)),
  ?assertEqual(false, problem9:is_pythagorean(3, 4, 6)).

get_sums_to_test() ->
  ?assertEqual([[1,2,3]], problem9:get_sums_to(6)),
  ?assertEqual([[1,3,4],[1,2,5]], problem9:get_sums_to(8)),
  ?assertEqual([[2,3,5],[1,4,5],[1,3,6],[1,2,7]], problem9:get_sums_to(10)).

