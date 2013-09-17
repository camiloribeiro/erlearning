-module(problem3_test).
-include_lib("eunit/include/eunit.hrl").

create_list_test() ->
  ?assertEqual([2,3,5,7,9], problem3:create_list(10)).

return_odd_num_test() ->
  ?assertEqual(0, problem3:return_odd_num(10)),
  ?assertEqual(11, problem3:return_odd_num(11)).

is_prime_test() ->
  ?assertEqual(2,  problem3:is_prime(2)), 
  ?assertEqual(3,  problem3:is_prime(3)), 
  ?assertEqual(0, problem3:is_prime(4)), 
  ?assertEqual(5,  problem3:is_prime(5)), 
  ?assertEqual(0, problem3:is_prime(6)), 
  ?assertEqual(7,  problem3:is_prime(7)), 
  ?assertEqual(0, problem3:is_prime(8)), 
  ?assertEqual(0, problem3:is_prime(9)), 
  ?assertEqual(0, problem3:is_prime(10)),
  ?assertEqual(11,  problem3:is_prime(11)).

factorize_test() ->
  ?assertEqual(1, problem3:factorize(3)),
  ?assertEqual(5, problem3:factorize(360)),
  ?assertEqual(29, problem3:factorize(13195)).

primes_test() ->
  ?assertEqual([7,5,3,2], problem3:primes(10)),
  ?assertEqual([97,89,83,79,73,71,67,61,59,53,47,43,41,37,31,29,23,19,17,13,11,7,5,3,2], problem3:primes(100)).

