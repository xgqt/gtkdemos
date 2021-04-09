% -*- erlang -*-


% run with:
%   escript helloworld.erl

% FIXME: Doesn't work
%          - clicking the button doesn't close the app
%          - no main loop


-module(helloworld).

-export([start/0]).
-export([handle_click/1]).

-include_lib("wx/include/wx.hrl").


handle_click(#wx{}) ->
    halt.


start() ->
    wx:new(),

    Frame = wxFrame:new(wx:null(), ?wxID_ANY, "Hello World"),
    Button = wxButton:new(Frame, ?wxID_ANY, [{label, "Hello World!"}]),
    wxButton:connect(
      Button,
      command_button_clicked,
      [{callback, handle_click}]
     ),

    wxFrame:show(Frame),
    wxButton:show(Button),

    timer:sleep(10000).


%% for running with escript
main(_) ->
    start().
