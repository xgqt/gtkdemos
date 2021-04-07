/*
 * run with:
 *   valac --pkg gtk+-3.0 helloworld.vala && ./helloworld
 *   (or valac-0.48 instead of vala)
 */


public class HelloWorld : Gtk.Application
{
    protected override void activate ( )
    {
        var window = new Gtk.ApplicationWindow(this);

        Gtk.Button button = new Gtk.Button.with_label("Hello World!");

        button.clicked.connect (() => {
            Process.exit(0);
        });

        window.add(button);
        window.set_title("Hello World");
        window.set_default_size(300, 300);
        window.show_all();
    }
}


public int main ( string[] args )
{
    return new HelloWorld().run(args);
}
