-module(problem7).
-compile(export_all).

get_prime_at(Num) ->
  get_prime_at([3,2], 2, Num).

get_prime_at([H|T], Current, Escape) ->
  if 
    (Current == Escape) -> H;
    true -> get_prime_at([get_next_prime(H, [H|T])|[H|T]], Current + 1, Escape)
  end.

get_next_prime(Num,List) -> 
  get_next_prime(Num + 1, List, List).

get_next_prime(Num, [], [_|_]) -> Num;

get_next_prime(Num,[H|T], List) -> 
  if 
    (Num rem H == 0) -> get_next_prime(Num + 1, List, List);
    true -> get_next_prime(Num, T, List)
  end.
