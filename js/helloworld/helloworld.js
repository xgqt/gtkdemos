#!/usr/bin/env gjs


// requires the gjs library:
//   https://gitlab.gnome.org/GNOME/gjs

// run with:
//   gjs helloworld.scm


const Gtk = imports.gi.Gtk;


let app = new Gtk.Application({ application_id: "org.gtk.HelloWorld" });

app.connect(
    "activate", () => {
        let win = new Gtk.ApplicationWindow({ application: app });
        let btn = new Gtk.Button({ label: "Hello, World!" });

        btn.connect("clicked", () => { win.close(); });
        win.add(btn);
        win.show_all();
    }
);


app.run([]);
