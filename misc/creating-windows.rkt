#lang racket

(require racket/gui/base)

(define frame (new frame% [label "Example"]))

(define msg (new message% [parent frame]
                 [label "No events so far ..."]))

(new button% [parent frame]
     [label "Click Me"]
     [callback (lambda (button event)
                 (send msg set-label "Button click"))])

(send frame show #t)
