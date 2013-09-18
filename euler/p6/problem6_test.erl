-module(problem6_test).
-include_lib("eunit/include/eunit.hrl").

foo_test() ->
      ?assertEqual(bar, problem6:foo(bar)).
