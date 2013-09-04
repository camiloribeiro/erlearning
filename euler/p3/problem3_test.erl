-module(problem3_test).
-include_lib("eunit/include/eunit.hrl").

invert_list_test() ->
  ?assertEqual([3,2,1], problem3:invert_list([1,2,3])).

last_test() ->
  ?assertEqual([3], problem3:last([1,2,3])).

create_list_test() ->
  ?assertEqual([10,9,8,7,6,5,4,3,2,1], problem3:create_list(10)).

is_prime_test() ->
  ?assertEqual([2],  problem3:is_prime(2)), 
  ?assertEqual([3],  problem3:is_prime(3)), 
  ?assertEqual([], problem3:is_prime(4)), 
  ?assertEqual([5],  problem3:is_prime(5)), 
  ?assertEqual([], problem3:is_prime(6)), 
  ?assertEqual([7],  problem3:is_prime(7)), 
  ?assertEqual([], problem3:is_prime(8)), 
  ?assertEqual([], problem3:is_prime(9)), 
  ?assertEqual([], problem3:is_prime(10)),
  ?assertEqual([11],  problem3:is_prime(11)).

factorize_test() ->
  ?assertEqual(5, problem3:factorize(360)),
  ?assertEqual(29, problem3:factorize(13195)).

primes_test() ->
  ?assertEqual([2,3,5,7], problem3:primes(10)),
  ?assertEqual([2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97], problem3:primes(100)).

