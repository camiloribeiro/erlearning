-module(problem3).
-compile(export_all).

create_list(Num) ->
  create_list([],Num).

create_list(List,Num) ->
  if 
    (Num /= 1) -> create_list([Num|List], Num - 1);
    true -> List
  end.

primes([H|T]) ->
  primes(H, T, [H]).

primes(Num, [], New_list) ->
  lists:reverse(New_list);

primes(Num, [H|T], New_list) ->
  if 
    H rem Num == 0 -> primes(Num, T, New_list);
    H rem Num /= 0 -> primes(Num, T, [H|New_list]);
    true -> New_list
  end.
