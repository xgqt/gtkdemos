-- requires the gtkada library:
--   https://github.com/AdaCore/gtkada

-- run with:
--   gprbuild -P helloworld.gpr && ./bin/main

-- FIXME: Clicking the button doesn't close the app


with Gdk.Event;     use Gdk.Event;
with Gtk.Button;    use Gtk.Button;
with Gtk.Main;
with Gtk.Widget;    use Gtk.Widget;
with Gtk.Window;    use Gtk.Window;


procedure Main is

   Win : Gtk_Window;
   Btn : Gtk_Button;

   function Delete_Event_Cb
     (Self  : access Gtk_Widget_Record'Class;
      Event : Gdk.Event.Gdk_Event)
      return Boolean
   is
      pragma Unreferenced (Self, Event);
   begin
      Gtk.Main.Main_Quit;
      return True;
   end Delete_Event_Cb;

begin

   Gtk.Main.Init;

   Gtk_New (Win);
   Win.Set_Title ("Hello World");
   Win.Set_Default_Size (300, 300);

   Gtk_New (Btn, "Hello World!");
   Win.Add (Btn);

   Win.On_Delete_Event (Delete_Event_Cb'Unrestricted_Access);
   Win.Show_All;

   Gtk.Main.Main;

end Main;
