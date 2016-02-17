%%%-------------------------------------------------------------------
%%% @author Alexandr KIRILOV
%%% @copyright (C) 2015, http://arboreus.system
%%% @doc
%%%
%%% @end
%%% Created : 20. Nov 2015 15:00
%%%-------------------------------------------------------------------
-author("Alexandr KIRILOV, http://alexandr.kirilov.me").

%% ----------------------------
%% Define constants
-define(FUNCTION_NAME(),process_info(self(),current_function)).
-define(MODULES,[
	fw_rest,
	fwr_service
]).