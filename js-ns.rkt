#lang racket
(require (only-in javascript
                  global-object))

(define-namespace-anchor a)
(define js-ns (namespace-anchor->namespace a))

(provide
 global-object
 js-ns
 )
