%%%-------------------------------------------------------------------
%%% @author Alexandr KIRILOV
%%% @copyright (C) 2015, http://arboreus.system
%%% @doc
%%%
%%% @end
%%% Created : 20. Nov 2015 14:54
%%%-------------------------------------------------------------------
-module(fw_rest).
-author("Alexandr KIRILOV, http://alexandr.kirilov.me").

%% System includes
-include_lib("yaws/include/yaws.hrl").
-include_lib("yaws/include/yaws_api.hrl").

%% API
-export([out/1]).

out(Yaws_arguments) ->
	Method = (Yaws_arguments#arg.req)#http_request.method,
	[
		{'ehtml',[
			["<!DOCTYPE html> "],
			{'head',[],[
				{'title',[],"Write"},
				["<meta charset=\"UTF-8\">"],
				["\n"]
			]},
			{'body',[],[
				[{'div',[],"REST1111"}]
			]}
		]}
	].