-module(max_subseq_test).
-include_lib("eunit/include/eunit.hrl").

get_max_subseq_test() -> 
  ?assertEqual([1,2,3], max_subseq:get_max_subseq([1,2,3])).
