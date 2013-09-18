-module(problem3_test).
-include_lib("eunit/include/eunit.hrl").

create_list_test() ->
  ?assertEqual(3, problem3:factorize(3)),
  ?assertEqual(5, problem3:factorize(5)),
  ?assertEqual(5, problem3:factorize(10)),
  ?assertEqual(29, problem3:factorize(13195)),
  ?assertEqual(6857, problem3:factorize(600851475143)).
