import gintro/[gtk, gobject, gio]


proc buttonClicked (button: Button) =
  quit(QuitSuccess)


proc appActivate (app: Application) =
  let window = newApplicationWindow(app)
  window.title = "Hello World"
  window.defaultSize = (250, 50)
  let button = newButton("Hello World")
  window.add(button)
  button.connect("clicked",  buttonClicked)
  window.showAll


proc main =
  let app = newApplication("org.gtk.HelloWorld")
  connect(app, "activate", appActivate)
  discard app.run


main()
