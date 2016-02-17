%%%-------------------------------------------------------------------
%%% @author Alexandr KIRILOV
%%% @copyright (C) 2015, http://arboreus.system
%%% @doc REST API service module
%%%
%%% @end
%%% Created : 20. Nov 2015 14:59
%%%-------------------------------------------------------------------
-module(fwr_service).
-author("Alexandr KIRILOV, http://alexandr.kirilov.me").

%% API
-export([
	test/0,
	reload/1
]).

%% Module includes
-include("hrl/fw_rest.hrl").

test() ->
	Data = [
		{modules,[jghf,kjhg,jkhg]}
	],
	Path = "/Users/alexandr/projects/Arboreus/Arboreus_fw_rest/dump.txt",
	file:write_file(Path,io_lib:fwrite("~p.\n",[Data])).

%% ----------------------------
%% @doc Reload Rest Application
-spec reload(application) -> iolist().

reload(application) ->
	lists:foreach(
		fun(Module_name) -> reload({module,Module_name}) end,
		?MODULES
	);

reload({module,Module_name}) ->
	try
		code:purge(Module_name),code:load_file(Module_name),
		io:fwrite("Module: "++atom_to_list(Module_name)++" -> Reloaded\n")
	catch
		Exception:Reason -> {error,{Module_name,Exception,Reason}}
	end.

%% ----------------------------
%% @doc

