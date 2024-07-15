#lang scribble/manual

@title{JavaScript Engine for Racket}

@author[(author+email "JavaCommons Technologies" "javacommons@gmail.com")]

@defmodule[js-eval]

This basically provides @racket[js-eval], @racket[js-global-get], and @racket[js-global-set!].

@table-of-contents[]

@section{Example and usage}

@codeblock|{
#! /usr/bin/env racket
#lang racket
(require js-eval)
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
}|

@section{Reference}

@defform[(js-eval script params ...)]{
Evaluates a JavaScript @racket[script] with optional parameters ($1～$n).
}

@defform[(js-global-get name)]{
Attempts to lookup property @racket[name] in global-object.
}

@defform[(js-global-set! name x)]{
Sets property @racket[name] in global-object.
}
