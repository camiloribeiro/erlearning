-module(fatorial).
-compile(export_all).

do_it(0) -> 1;
do_it(A) ->
  A * do_it(A-1).
