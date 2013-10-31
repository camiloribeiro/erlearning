-module(problem8).
-compile(export_all).

get_bigger(Num) -> 
  get_bigger(Num, 1, string:len(Num) - 4, 0). 
    
    
get_bigger(Num, Position, Max, Bigger) -> 
  if 
    (Position > Max) -> Bigger;
    true -> 
        Current  = string:substr(Num, Position , 5), 
      if 
        (Bigger > Current) -> get_bigger(Num, Position + 1, Max, Bigger);
        true -> get_bigger(Num, Position + 1, Max, Current)
      end
  end.
