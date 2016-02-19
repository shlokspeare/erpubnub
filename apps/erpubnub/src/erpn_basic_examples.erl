-module(erpn_basic_examples).

-compile([export_all]).

publish() ->
    erpubnub:publish(<<"hello_world">>, <<"hello">>).

subscribe() ->
    erpubnub:subscribe(<<"hello_world">>, fun(X)-> io:format("~p~n", [X]) end).

history() ->
    erpubnub:history(<<"hello_world">>, 10).

time() ->
    erpubnub:time().
