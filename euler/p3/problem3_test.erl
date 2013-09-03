-module(problem3_test).
-include_lib("eunit/include/eunit.hrl").

factorize_test() ->
  ?assertEqual([2,3,5], problem3:factorize(13195)).
