#lang typed/racket

(require
  (prefix-in brute-simple: "muls-of-3-or-5-brute-simple.rkt")
  (prefix-in brute-tail: "muls-of-3-or-5-brute-simple.rkt")
  (prefix-in brute-for: "muls-of-3-or-5-brute-for.rkt")
  (prefix-in skip-tail: "muls-of-3-or-5-skip-tail.rkt"))

(define solutions (list
  brute-simple:muls-of-3-or-5
  brute-tail:muls-of-3-or-5
  brute-for:muls-of-3-or-5
  skip-tail:muls-of-3-or-5))

(provide solutions)
