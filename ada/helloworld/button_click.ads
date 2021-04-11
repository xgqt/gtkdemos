with Gtk.Button;    use Gtk.Button;
with Gtk.Main;


package button_click is

   Btn : Gtk_Button;
   procedure button_clicked (Self : access Gtk_Button_Record'Class);

end button_click;
