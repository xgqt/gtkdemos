#!/usr/bin/env racket


;; requires the racket/gui library (should come with full distribution):
;;   https://github.com/racket/gui

;; run with:
;;   racket helloworld.rkt

;; or compile & run with:
;;   raco exe -o helloworld helloworld.rkt && ./helloworld


#lang racket/base

(require racket/gui)


(define frame
  (new frame%
       [label "Hello World"]
       [height 300]
       [width  300]
       )
  )

(new button%
     [parent frame]
     [label "Hello World!"]
     [stretchable-height #t]
     [stretchable-width  #t]
     [callback
      (lambda (button event)
        (exit))
      ]
     )


(send frame show #t)
