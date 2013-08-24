-module(calc_test).
-include_lib("eunit/include/eunit.hrl").

run_test() -> 
  ?assertEqual("ok", calc:run([])),
  ?assertEqual(3, calc:run([1,2,"+"])),
  ?assertEqual(1, calc:run([2,1,"-"])),
  ?assertEqual(4, calc:run([2,2,"*"])),
  ?assertEqual(2, calc:run([4,2,"/"])),
  ?assertEqual(4, calc:run([4,2,"/",2,"*"])),
  ?assertEqual(150, calc:run([4,2,"/",2,"*",4,"-",15,"+",10,"*"])).
