-module(problem3).
-compile(export_all).

factorize(Number) ->  
  primes(Number, max_primes([Number])).
primes(Num,[H|T]) ->
  if 
    Num rem H == 0 -> H;
    true -> primes(Num, T)
  end.
max_primes([H|T]) ->
  if H > 1 ->
    max_primes([H - 1|[H|T]]);
    true -> [H|T]
  end.
is_prime(Num, [H|T]) ->
  if 
    Num rem H == 0 -> false;
    true -> is_prime(Num, T)
  end.
