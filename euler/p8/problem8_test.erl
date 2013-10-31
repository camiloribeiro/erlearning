-module(problem8_test).
-include_lib("eunit/include/eunit.hrl").

get_all_five_possible_test() ->
  ?assertEqual(["12345","23456"], problem8:get_all_five_possible("123456")).
