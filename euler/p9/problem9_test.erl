-module(problem9_test).
-include_lib("eunit/include/eunit.hrl").

is_pythagorean_test() -> 
  ?assertEqual(true, problem9:is_pythagorean(3, 4, 5)),
  ?assertEqual(false, problem9:is_pythagorean(3, 4, 6)).
