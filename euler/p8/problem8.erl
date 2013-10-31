-module(problem8).
-compile(export_all).

get_product_for(Num) ->
  get_product_for(Num, 1, 1).

get_product_for(Num, Sum, Position) ->
  {Current,_} = string:to_integer(string:substr(Num, Position, 1)),
  if 
    ( Position > 5 ) -> Sum;
    true -> get_product_for(Num, Sum * Current, Position + 1)
  end.

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
