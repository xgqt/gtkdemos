#!/usr/bin/env ruby


# requires the gtk3 library:
#   https://github.com/ruby-gnome/ruby-gnome

# run with:
#   ruby helloworld.rb


require "gtk3"


window = Gtk::Window.new("Hello World")

window.set_size_request(300, 300)


button = Gtk::Button.new(:label => "Hello World!")

button.signal_connect "clicked" do |_widget|
  Gtk.main_quit
end

window.add(button)


window.signal_connect("delete-event") { |_widget| Gtk.main_quit }

window.show_all


Gtk.main
