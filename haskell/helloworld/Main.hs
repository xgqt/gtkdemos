-- requires the haskell-gi library:
--   https://github.com/haskell-gi/haskell-gi

-- run with:
--   cabal v2-run


{-# LANGUAGE OverloadedStrings, OverloadedLabels #-}


module Main where

import qualified GI.Gtk as Gtk
import Data.GI.Base
import System.Exit ( exitSuccess )


main :: IO ()
main = do
  Gtk.init Nothing

  win <- new Gtk.Window [ #title := "Hello World!" ]
  Gtk.windowSetDefaultSize win 300 300
  on win #destroy Gtk.mainQuit

  btn <- new Gtk.Button [ #label := "Hello World" ]
  on btn #clicked ( exitSuccess )

  #add win btn
  #showAll win

  Gtk.main
