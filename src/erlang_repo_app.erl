-module(erlang_repo_app).
-behaviour(application).

-export([start/2]).
-export([stop/1]).

-spec start(Type::[atom()], Args::string()) -> ok.
start(_Type, _Args) ->
	erlang_repo_sup:start_link().

stop(_State) ->
	ok.
