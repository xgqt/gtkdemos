with Gtk.Button;    use Gtk.Button;
with Gtk.Main;


package body button_click is

   procedure button_clicked (Self : access Gtk_Button_Record'Class) is
   begin
      Gtk.Main.Main_Quit;
   end button_clicked;

end button_click;
