-module(problem3_test).
-include_lib("eunit/include/eunit.hrl").

create_list_test() ->
  ?assertEqual([2,3,4,5,6,7,8,9,10], problem3:create_list(10)).

primes_test() ->
  ?assertEqual([2,3,5,7,9,11,13,15,17,19], problem3:primes([2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19])).
