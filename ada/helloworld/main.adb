-- requires the gtkada library:
--   https://github.com/AdaCore/gtkada

-- run with:
--   gprbuild -P helloworld.gpr && ./bin/main

-- FIXME: Clicking the button doesn't close the app


with Gtk.Button;    use Gtk.Button;
with Gtk.Main;
with Gtk.Window;    use Gtk.Window;


procedure Main is

    Win : Gtk_Window;
    Btn : Gtk_Button;

begin

    Gtk.Main.Init;

    Gtk_New (Win);
    Win.Set_Title ("Hello World");
    Win.Set_Default_Size (300, 300);

    Gtk_New (Btn, "Hello World!");
    Win.Add (Btn);

    Win.Show_All;

    Gtk.Main.Main;

end Main;
