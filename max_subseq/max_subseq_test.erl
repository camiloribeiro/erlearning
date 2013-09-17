-module(max_subseq_test).
-include_lib("eunit/include/eunit.hrl").

get_max_subseq_test() -> 
  ?assertEqual("ok", max_subseq:get_max_subseq([])),
  ?assertEqual(([1]), max_subseq:get_max_subseq([1])),
  ?assertEqual([1,2,3], max_subseq:get_max_subseq([1,2,3])),
  ?assertEqual([2,3], max_subseq:get_max_subseq([2,1,3])).
