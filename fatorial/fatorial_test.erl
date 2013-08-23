-module(fatorial_test).
-include_lib("eunit/include/eunit.hrl").

get_max_subseq_test() -> 
  ?assertEqual("ok", fatorial:do_it([])),
  ?assertEqual(1, fatorial:do_it(1)).
