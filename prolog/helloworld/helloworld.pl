% -*- prolog -*-


% requires the plgi library:
%   https://github.com/keriharris/plgi

% run with:
%   swipl helloworld.pl


:- use_module( library( plgi ) ).

:- plgi_use_namespace( 'Gtk' ).


on_button_clicked( _Button, _UserData ) :-
    halt.


main :-
    gtk_window_new( 'GTK_WINDOW_TOPLEVEL', Window ),
    gtk_window_set_title( Window, 'Hello World' ),
    gtk_window_set_default_size( Window, 300, 300 ),

    gtk_button_box_new( 'GTK_ORIENTATION_HORIZONTAL', ButtonBox ),
    gtk_container_add( Window, ButtonBox ),

    gtk_button_new_with_label( 'Hello World!', Button ),
    g_signal_connect( Button, 'clicked', on_button_clicked/2, {null}, _ ),
    gtk_container_add( ButtonBox, Button ),

    g_signal_connect( Window, 'destroy', gtk_main_quit/0, {null}, _ ),
    gtk_widget_show_all( Window ),

    gtk_main,
    halt.


:- main.
