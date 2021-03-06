#!/usr/bin/env python


# requires the pygobject library:
#   https://gitlab.gnome.org/GNOME/pygobject

# run with:
#   python helloworld.py


import sys

import gi
gi.require_version("Gtk", "3.0")
from gi.repository import Gtk


class MyWindow(Gtk.Window):

    def __init__(self):
        Gtk.Window.__init__(self, title="Hello World")
        Gtk.Window.set_default_size(self, 300, 300)

        self.box = Gtk.Box(spacing=6)
        self.add(self.box)

        self.button = Gtk.Button(label="Hello World")
        self.button.set_halign(Gtk.Align.CENTER)
        self.button.set_valign(Gtk.Align.CENTER)
        self.button.connect("clicked", self.on_button_clicked)
        self.box.pack_start(self.button, True, True, 0)

    def on_button_clicked(self, widget):
        sys.exit()


if __name__ == "__main__":

    win = MyWindow()
    win.connect("destroy", Gtk.main_quit)
    win.show_all()

    Gtk.main()
