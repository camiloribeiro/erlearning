-module(problem4).
-compile(export_all).

get_palindromic(Number) ->
  get_palindromic(Number, Number).

get_palindromic(Number, Other) ->
  Is_palindromic = is_palindromic(Number * Other),
  if 
    Is_palindromic -> Number * Other;
    Other > 1 -> get_palindromic(Number, Other -1);
    Other == 1 -> get_palindromic(Number -1, Number -1);
    true -> true
  end.

is_palindromic(Number) ->
  Num = lists:flatten(io_lib:format("~p", [Number])),
  Reverted = lists:reverse(Num),
  if
    Num == Reverted -> true;
    true -> false
  end.
