-module(problem9).
-compile([export_all]).

is_pythagorean(NumA, NumB, NumC) ->
  (NumA * NumA) + (NumB * NumB) == (NumC * NumC).

get_sums_to(Num) -> 
  get_sums_to(1, 2, Num, []).
  
get_sums_to(First, Second, Num, List) -> 
  Third = Num - (First + Second),
  if
    (Third > Second) -> 
      get_sums_to(First, Second + 1, Num, [[First, Second, Third]|List]);
    true -> List 
  end.

