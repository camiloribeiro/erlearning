-module(problem3).
-compile(export_all).

factorize(Number) ->  
  List = primes(round(math:sqrt(Number))),
  factorize(List, Number).

factorize([], Number) ->  
  round(Number / Number);

factorize([H|T], Number) ->  
  if
    Number rem H == 0 -> H;
    true -> factorize(T, Number)
  end.

primes(Num) ->
  List = create_list(Num),
  primes(List, []).

primes([], New_list) ->
  New_list;

primes([H|T], New_list) ->
  Foo = is_prime(H),
  if 
    Foo == 0 ->
      primes(T, New_list);
    T /= [] ->
      primes(T, [Foo|New_list]);
    true -> New_list
  end.

is_prime(2) ->
  2;

is_prime(Num) ->
  List = create_list(Num - 1),
  is_prime(Num, List).

is_prime(Num, [H|T]) ->
  if 
    T == [] -> Num;
    Num rem H /= 0 -> is_prime(Num, T);
    true -> 0
  end.

create_list(Num) ->
  create_list([],Num).

create_list(List, 1) ->
  [2|List];
  %create_list([2|List], 0);

create_list(List, 0) ->
  [1|List];

create_list(List, Num) ->
  Foo = return_odd_num(Num),
  if 
    Foo > 1 ->
      create_list([Foo|List], Num - 1);
      true -> 
        create_list(List, Num - 1)
    end.

return_odd_num(Num) ->
  if 
    Num rem 2 /= 0 ->
      Num;
    true -> 0
  end.
