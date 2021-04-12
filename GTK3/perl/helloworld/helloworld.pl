#!/usr/bin/env perl


# requires the Gtk3 library:
#   https://gitlab.gnome.org/GNOME/perl-gtk3

# run with:
#   perl helloworld.pl


use strict;
use Glib ('TRUE','FALSE');
use Gtk3 -init;


my $window = Gtk3::Window -> new('toplevel');

$window -> set_title('Hello World');
$window -> set_default_size(300, 300);

$window -> signal_connect('delete_event' => sub { Gtk3 -> main_quit() });


my $button = Gtk3::Button -> new('Hello World!');

$button -> signal_connect('clicked' => sub { Gtk3::main_quit() });

$window -> add ($button);


$window -> show_all;

Gtk3 -> main();
