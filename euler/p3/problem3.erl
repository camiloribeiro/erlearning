-module(problem3).
-compile(export_all).

factorize(Number) ->  
  List = invert_list(primes(round(math:sqrt(Number)))),
  factorize(List, Number).

factorize([H|T], Number) ->  
  if
    Number rem H == 0 -> H;
    true -> factorize(T, Number)
  end.

primes(Num) ->
  List = create_list(Num),
  primes(List, []).

primes([H|T], New_list) ->
  if T /= [] ->
    primes(T, is_prime(H) ++  New_list);
    true -> New_list
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
    T == [] -> [Num];
    Num rem H /= 0 -> is_prime(Num, T);
    true -> []
  end.

create_list(Num) ->
  create_list([],Num).

create_list(List, Num) ->
  if 
    Num > 0 ->
      create_list(List ++ [Num], Num - 1);
      true -> List
    end.
