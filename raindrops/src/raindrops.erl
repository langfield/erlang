-module(raindrops).

-export([convert/1]).

convert(N) when N rem 3 == 0, N rem 5 == 0, N rem 7 == 0 -> "PlingPlangPlong";
convert(N) when N rem 3 == 0, N rem 5 == 0 -> "PlingPlang";
convert(N) when N rem 3 == 0, N rem 7 == 0 -> "PlingPlong";
convert(N) when N rem 5 == 0, N rem 7 == 0 -> "PlangPlong";
convert(N) when N rem 3 == 0 -> "Pling";
convert(N) when N rem 5 == 0 -> "Plang";
convert(N) when N rem 7 == 0 -> "Plong";
convert(N) -> integer_to_list(N).
