#lang typed/racket

(require
  (prefix-in brute-simple: "muls-of-3-or-5-brute-simple.rkt"))

(define solutions (list
  brute-simple:muls-of-3-or-5))

(provide solutions)
