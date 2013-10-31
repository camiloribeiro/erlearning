-module(problem8).
-compile(export_all).

get_five(Num) -> string:substr(Num, 1, 5).
