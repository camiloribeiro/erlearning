-module(problem3).
-compile(export_all).

create_list(Num) ->
  create_list([],Num).

create_list(List,Num) ->
  if 
    (Num /= 0) -> create_list([Num|List], Num - 1);
    true -> List
  end.
