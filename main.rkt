#lang racket
(require "./js-ns.rkt")
(require javascript)
(require output)

(define _ (install-standard-library! global-object))

(define (js-global-object)
  global-object
  )

(define (js-global-get name)
  (object-get global-object name)
  )

(define (js-global-set! name x)
  (object-set! global-object name x)
  (void)
  )

(define (js-global-delete! name)
  (object-delete! global-object name)
  (void)
  )

(define (js-eval script . params)
  (for ([i (length params)]) (js-global-set! (format "$~a" (+ i 1)) (list-ref params i)))
  (define result (eval-script script js-ns))
  (for ([i (length params)]) (js-global-delete! (format "$~a" (+ i 1))))
  result
  )

(js-global-set! "global" global-object)
(js-global-set! "echo" echo)

(provide
 js-global-object
 js-eval
 js-global-get
 js-global-set!
 js-global-delete!
 )
