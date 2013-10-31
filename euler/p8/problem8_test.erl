-module(problem8_test).
-include_lib("eunit/include/eunit.hrl").

get_five_test() ->
  ?assertEqual(12345, problem8:get_five(123456)).
