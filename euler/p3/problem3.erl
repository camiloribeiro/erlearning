-module(problem3).
-compile(export_all).

factorize(Number) ->  
  List = primes(round(math:sqrt(Number))),
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
      primes(T, New_list ++ is_prime(H));
    true -> New_list
  end.

last([]) ->
  true;

last([H|T]) ->
  if 
    T == [] -> [H|T];
    true -> last(T)
  end.

is_prime(2) ->
  [2];

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

create_list(List, 1) ->
  List ++ [2,1];

create_list(List, Num) ->
  Foo = return_odd_num(Num),
  if 
    Foo > 1 ->
      create_list(List ++ [return_odd_num(Num)], Num - 1);
      true -> 
        create_list(List, Num - 1)
    end.

return_odd_num(Num) ->
  if 
    Num rem 2 /= 0 ->
      Num;
    true -> 0
  end.
