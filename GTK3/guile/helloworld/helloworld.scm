#!/usr/bin/env guile
!#


;; requires the guile-gi library:
;;   https://github.com/spk121/guile-gi

;; run with:
;;   guile helloworld.scm


(use-modules (gi))

(use-typelibs
 ("Gtk" "3.0")
 (("Gio" "2.0") #:select (activate run))
 )


(define (on-activation app)
  (let
      (
       (window (make <GtkWindow>
                 #:application app
                 #:title "Hello World"
                 #:height-request 300
                 #:width-request 300
                 )
               )
       (button (make <GtkButton> #:label "Hello World!"))
       )
    (connect button clicked (lambda (_) (close window)))
    (add window button)
    (show-all window)
    )
  )

(let
    (
     (app (make <GtkApplication> #:application-id "org.gtk.HelloWorld"))
     )
  (connect app activate on-activation)
  (run app '())
  )
