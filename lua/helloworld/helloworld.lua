#!/usr/bin/env lua


local lgi = require "lgi"
local Gtk = lgi.require("Gtk", "3.0")
local Gio = lgi.Gio


local app = Gtk.Application.new(
   "org.gtk.HelloWorld",
   Gio.ApplicationFlags.HANDLES_OPEN
)


local function show_app()
   local window = Gtk.Window {
      type = Gtk.WindowType.TOPLEVEL,
      default_width = 300,
      default_height = 300,
      application = app,
      title = "Hello World",

      child = Gtk.ToolButton {
         id = "hello_world",
         label = "Hello World!",
         on_clicked = function() app:quit() end,
      }
   }
   window:show_all()
   return window
end


function app:on_activate()
   show_app()
end


return app:run {}
