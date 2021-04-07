#!/usr/bin/env racket


;; requires the racket/gui library (should come with full distribution):
;;   https://github.com/racket/gui

;; run with:
;;   racket helloworld.rkt


#lang racket/base

(require racket/gui)


(define frame (new frame% [label "Hello World"]))

(new button%
     [parent frame]
     [label "Hello World!"]
     [callback
      (lambda (button event)
        (exit))
      ]
     )


(send frame show #t)
