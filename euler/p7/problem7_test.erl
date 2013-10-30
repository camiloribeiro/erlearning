-module(problem7_test).
-include_lib("eunit/include/eunit.hrl").

get_prime_at_at_test() ->
  {timeout, 10, 
   [?assertEqual(10474, problem7:get_prime_at(10001)),
    ?assertEqual(13, problem7:get_prime_at(6))]
  }.

get_next_prime_test() ->
  ?assertEqual(3, problem7:get_next_prime(2  ,[5,5])),
  ?assertEqual(5, problem7:get_next_prime(3  ,[2,2])),
  ?assertEqual(5, problem7:get_next_prime(4  ,[3,2])),
  ?assertEqual(7, problem7:get_next_prime(5  ,[3,2])),
  ?assertEqual(7, problem7:get_next_prime(6  ,[5,3,2])),
  ?assertEqual(11, problem7:get_next_prime(7 ,[5,3,2])),
  ?assertEqual(11, problem7:get_next_prime(8 ,[7,5,3,2])),
  ?assertEqual(11, problem7:get_next_prime(9 ,[7,5,3,2])),
  ?assertEqual(11, problem7:get_next_prime(10,[7,5,3,2])),
  ?assertEqual(13, problem7:get_next_prime(11,[7,5,3,2])),
  ?assertEqual(13, problem7:get_next_prime(12,[11,7,5,3,2])),
  ?assertEqual(17, problem7:get_next_prime(13,[11,7,5,3,2])),
  ?assertEqual(17, problem7:get_next_prime(14,[13,11,7,5,3,2])),
  ?assertEqual(17, problem7:get_next_prime(15,[13,11,7,5,3,2])),
  ?assertEqual(17, problem7:get_next_prime(16,[13,11,7,5,3,2])),
  ?assertEqual(19, problem7:get_next_prime(17,[13,11,7,5,3,2])),
  ?assertEqual(19, problem7:get_next_prime(18,[17,13,11,7,5,3,2])).
