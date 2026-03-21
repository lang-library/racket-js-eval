#! /usr/bin/env racket
#lang racket
(require "./main.rkt")
(require output)

(js-global-set! "xyz" 888)
(js-eval "print(xyz+$1)" 11)
(js-eval "xyz=(123+$1)*$2" 11 20)
(js-eval "echo(xyz, 'xyz')")
(js-global-get "xyz")
(js-eval "$result = $1 + $2" 11 22)
(dump (js-global-get "$result"))
(js-global-set! "list-ref" list-ref)
(js-eval "global['list-ref']($1, $2)" '(111 222 333) 1)
(js-global-set! "list_ref" list-ref)
(js-eval "list_ref($1, $2)" '(111 222 333) 1)
#|
   New example (2026.03.22): define function in JavaScript and call it fom racket-lang.
|#
(js-eval "$add2 = function(a, b) { return a + b; }")
((js-global-get "$add2") 1111 2222)
