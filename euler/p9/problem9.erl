-module(problem9).
-compile([export_all]).

is_pythagorean(NumA, NumB, NumC) ->
  (NumA * NumA) + (NumB * NumB) == (NumC * NumC).
