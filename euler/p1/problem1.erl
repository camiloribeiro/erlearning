-module(problem1).
-compile(export_all).

multiples(Num) ->
  multiples(0,Num -1).
multiples(Sum, 1) -> Sum;
multiples(Sum,Num) ->
  multiples( Sum +
  if
    ((Num rem 10) == 0) -> Num;
    ((Num rem 5) == 0) -> Num;
    ((Num rem 3) == 0) -> Num;
    true -> 0
  end,
  Num - 1).
