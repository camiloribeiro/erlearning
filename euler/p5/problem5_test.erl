-module(problem5_test).
-include_lib("eunit/include/eunit.hrl").

get_smalest_test() ->
    ?assertEqual(2, problem5:smalest_evenly_divisible_by_one_to(2)),
    ?assertEqual(6, problem5:smalest_evenly_divisible_by_one_to(3)),
    ?assertEqual(2520, problem5:smalest_evenly_divisible_by_one_to(10)),
    ?assertEqual(232792560, problem5:smalest_evenly_divisible_by_one_to(20)).

