#! /usr/bin/env racket
#lang racket
(require "./main.rkt")
(require pprint-all)

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
