-module(problem3).
-compile(export_all).

%inspired by http://caylespandon.blogspot.com.br/2009/01/erlang-solution-to-euler-problem-3.html
factorize(Num) ->
  factorize(Num, 2).

factorize(Num, Divisor) ->
  if
    Divisor > Num div 2 ->
      Num;
    true->
      if
        Num rem Divisor == 0 ->
          factorize(Num div Divisor, Divisor);
        true ->
          factorize(Num, Divisor + 1)
      end
  end.  
