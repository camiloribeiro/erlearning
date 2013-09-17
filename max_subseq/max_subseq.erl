-module(max_subseq).
-compile(export_all).

get_max_subseq([]) -> ("ok");
get_max_subseq([A]) -> ([A]);
get_max_subseq([H1,H2|T]) -> 
  if H1 < H2 ->
    [H1,H2|T]
  end,
  if H1 > H2 ->
    [H1|T]
  end.
