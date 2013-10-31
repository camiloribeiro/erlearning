-module(problem9).
-compile([export_all]).

get_pythagorean(Num) ->
  List = get_sums_to(Num),
  run_list(List).

get_product([H1,H2,H3|_]) ->
  H1 * H2 * H3.

run_list([H|T]) ->
    Current = run_list_foo(H),
  if
    Current ->
      H;
    true ->
      run_list(T)
    end;

run_list([]) ->
    "Nada aqui bro".

run_list_foo([H1,H2,H3|_]) ->
  is_pythagorean(H1,H2,H3).

is_pythagorean(NumA, NumB, NumC) ->
  (NumA * NumA) + (NumB * NumB) == (NumC * NumC).

get_sums_to(Num) -> 
  get_sums_to(1, 2, Num, []).
  
get_sums_to(First, Second, Num, List) -> 
  Third = Num - (First + Second),
  if 
    (Third > Second) -> 
      get_sums_to(First, Second + 1, Num, [[First, Second, Third]|List]);
    true ->
  if
    ((First + Second ) >  Num ) -> List;
    true -> 
      get_sums_to(First + 1, First + 2, Num, List)
      end
  end.

