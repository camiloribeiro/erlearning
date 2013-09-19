-module(problem6).
-compile(export_all).

get_sum(Number) ->
  get_sum(Number, 0, 0).

get_sum(Number, Num_sum, Num_sqr) ->
  if 
    Number ==  0 -> (Num_sum * Num_sum) - Num_sqr;
    true -> get_sum(Number - 1, Num_sum + Number, Num_sqr + (Number * Number))
  end.
