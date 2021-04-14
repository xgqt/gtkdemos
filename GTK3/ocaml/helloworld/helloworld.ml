(*
 * requires the lablgtk library:
 *  https://github.com/garrigue/lablgtk
 *
 * run with:
 *  dune build && dune exec ./helloworld.exe
*)


let _ = GMain.init ()


let window = GWindow.window ~title:"Hello World" ~height:300 ~width:300 ()

let button = GButton.button ~label:"Hello World!" ~packing: window#add ()


let main () =
  window#connect#destroy ~callback:GMain.quit;
  button#connect#clicked ~callback:window#destroy;
  window#show ();
  GMain.main ()
;;

let _ = Printexc.print main ()
