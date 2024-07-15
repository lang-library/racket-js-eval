# JavaScript Engine for Racket

by JavaCommons Technologies
<[javacommons@gmail.com](mailto:javacommons@gmail.com)>

 (require js-eval) package: [js-eval](https://pkgs.racket-lang.org/package/js-eval)

This basically provides `js-eval`, `js-global-get`, and
`js-global-set!`. This depends on [JavaScript for PLT
Scheme](https://docs.racket-lang.org/javascript/index.html) package, and
all of the functions in [JavaScript for PLT
Scheme](https://docs.racket-lang.org/javascript/index.html) package can
be used with this package.

    1 Example and usage
                       
    2 Reference        

## 1. Example and usage

```racket
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
```

## 2. Reference

```racket
(js-eval script params ...)
```

Evaluates a JavaScript `script` with optional parameters ($1～$n).

```racket
(js-global-get name)
```

Attempts to lookup property `name` in global-object.

```racket
(js-global-set! name x)
```

Sets property `name` in global-object.
