#lang info
(define collection "js-eval")
(define name "js-eval: JavaScript Engine for Racket")
(define blurb '("JavaScript Engine for Racket."))
(define categories '(devtools))
(define can-be-loaded-with 'all)
(define required-core-version "5.1.1")
(define version "1.0")
(define repositories '("4.x"))
(define scribblings '(("js-eval.scrbl")))
(define primary-file "main.rkt")
(define release-notes '((p "First release")))
(define deps '(
               "base"
               "javascript"
               "output"
               ))
(define build-deps '("racket-doc"
                     "scribble-lib"))
