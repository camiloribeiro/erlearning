-module(problem3_test).
-include_lib("eunit/include/eunit.hrl").

create_list_test() ->
  ?assertEqual([2,3,4,5,6,7,8,9,10], problem3:create_list(10)).
