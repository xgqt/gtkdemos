-- requires the gtkada library:
--   https://github.com/AdaCore/gtkada

-- run with:
--   gprbuild -P helloworld.gpr && ./bin/main


with Gdk.Event;     use Gdk.Event;
with Gtk.Button;    use Gtk.Button;
with Gtk.Main;
with Gtk.Widget;    use Gtk.Widget;
with Gtk.Window;    use Gtk.Window;

with button_click;  use button_click;


procedure Main is

   Win : Gtk_Window;

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

   Gtk_New (button_click.Btn, "Hello World!");
   On_Clicked(button_click.Btn, button_clicked'Access);
   Win.Add (Btn);

   Win.On_Delete_Event (Delete_Event_Cb'Unrestricted_Access);
   Win.Show_All;

   Gtk.Main.Main;

end Main;
