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
invert_list([H|T]) ->
  invert_list([], [H|T]).
invert_list(New, [H|T]) ->
  Last = last(T),
  if 
    H /= Last -> 
      invert_list([H] ++ New, T);
    true -> New
  end;
invert_list(New, []) ->
  New.
last([]) ->
  true;
last([H|T]) ->
  if 
    T == [] -> [H|T];
    true -> last(T)
  end.
is_prime(Num) ->
  List = create_list(Num - 1),
  is_prime(Num, List).
is_prime(Num, [H|T]) ->
  if 
    T == [] -> true;
    Num rem H /= 0 -> is_prime(Num, T);
    true -> false
  end.
create_list(Num) ->
  create_list([],Num).
create_list(List, Num) ->
  if 
    Num > 0 ->
      create_list(List ++ [Num], Num - 1);
      true -> List
    end.
