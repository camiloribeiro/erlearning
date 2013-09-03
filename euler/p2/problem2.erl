-module(problem2).
-compile(export_all).

even(Max) ->
  fibonacci(1, 2, Max, 0).
fibonacci(Prev, Num, Max, Sum) ->
  if 
    Num < Max -> 
      fibonacci(Num, Prev + Num, Max, Sum +
        if 
          Num rem 2 == 0 -> 
            Num;
          true -> 0
        end);
    true -> Sum
  end.
