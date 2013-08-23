-module(fatorial_test).
-include_lib("eunit/include/eunit.hrl").

do_it_test() -> 
  ?assertEqual(1, fatorial:do_it(0)),
  ?assertEqual(1, fatorial:do_it(1)).
