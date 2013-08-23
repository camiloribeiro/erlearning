-module(fatorial_test).
-include_lib("eunit/include/eunit.hrl").

do_it_test() -> 
  ?assertEqual(1, fatorial:do_it(0)),
  ?assertEqual(1, fatorial:do_it(1)),
  ?assertEqual(2, fatorial:do_it(2)),
  ?assertEqual(6, fatorial:do_it(3)),
  ?assertEqual(93326215443944152681699238856266700490715968264381621468592963895217599993229915608941463976156518286253697920827223758251185210916864000000000000000000000000, fatorial:do_it(100)).
