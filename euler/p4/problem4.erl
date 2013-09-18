-module(problem4).
-compile(export_all).

get_palindromic(Number) ->
  get_palindromic(Number, Number, []).

get_palindromic(Number, Other, List) ->
  Is_palindromic = is_palindromic(Number * Other),
  if 
    Number == 100 -> lists:max(List);
    Is_palindromic -> get_palindromic(Number, Other -1, [Number * Other|List]);
    Other == 100 -> get_palindromic(Number -1, Number -1, List);
    true -> get_palindromic(Number, Other -1, List)
  end.

is_palindromic(Number) ->
  Num = lists:flatten(io_lib:format("~p", [Number])),
  Reverted = lists:reverse(Num),
  if
    Num == Reverted -> true;
    true -> false
  end.
