-module(calc).
-compile(export_all).

run([]) -> "ok";
run([H1,H2,H3|T]) ->
  A = if 
    (H3 == "+") -> H1 + H2;
    (H3 == "-") -> H1 - H2;
    (H3 == "*") -> H1 * H2;
    (H3 == "/") -> H1 div H2
  end,
  run([A|T]);
run([H|_]) -> H.
