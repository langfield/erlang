-module(accumulate).
-import(lists,[reverse/1]).
-export([accumulate/2]).

%%
%% given a fun and a list, apply fun to each list item replacing list item with fun's return value.
%%
-spec accumulate(fun((A) -> B), list(A)) -> list(B).
accumulate(_, []) -> [];
accumulate(F, Xs) -> accumulate(F, Xs, []).

accumulate(_, [], Ys) -> reverse(Ys);
accumulate(F, [H|T], Ys) -> accumulate(F, T, [F(H)|Ys]).
