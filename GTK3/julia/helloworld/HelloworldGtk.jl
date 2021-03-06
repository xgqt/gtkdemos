#!/usr/bin/env julia


# requires the Gtk library:
#  https://github.com/JuliaGraphics/Gtk.jl

# run with:
#  julia HelloworldGtk.jl


using Gtk


function on_button_clicked(w)
    exit()
end


win = GtkWindow("Hello World", 300, 300)


button = GtkButton("Hello World!")
push!(win, button)

signal_connect(on_button_clicked, button, "clicked")

showall(win)


signal_connect(win, :destroy) do widget
    Gtk.gtk_quit()
end

Gtk.gtk_main()
