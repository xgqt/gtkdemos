extern crate gio;
extern crate gtk;

use gio::prelude::*;
use gtk::prelude::*;

use std::env::args;

fn build_ui(application: &gtk::Application) {
    let window = gtk::ApplicationWindow::new(application);
    window.set_title("Hello World");

    let button = gtk::Button::with_label("Hello World!");
    button.connect_clicked(|_|  {
        std::process::exit(0)
    });

    window.add(&button);

    window.show_all();
}

fn main() {
    let application =
        gtk::Application::new(Some("whydoes.thisidentifyas.anapp"), Default::default())
            .expect("Initialization failed...");

    application.connect_activate(|app| {
        build_ui(app);
    });

    application.run(&args().collect::<Vec<_>>());
}
