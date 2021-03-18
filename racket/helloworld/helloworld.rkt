#!/usr/bin/env racket


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
