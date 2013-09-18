-module(problem5).
-compile(export_all).

smalest_evenly_divisible_by_one_to(Number) ->
   is_divisible_by_all(1,Number, Number).

is_divisible_by_all(Candidate,High_divisor, Max) ->
  if
    High_divisor == 0 -> Candidate;
    Candidate rem High_divisor == 0 -> is_divisible_by_all(Candidate, High_divisor - 1, Max);
    true -> is_divisible_by_all(Candidate + 1, Max, Max)
  end.
