#lang typed/racket

(require
  (prefix-in brute-do: "two-sum-brute-do.rkt")
  (prefix-in skip-tail: "two-sum-skip-tail.rkt")
  (prefix-in linear-tail: "two-sum-linear-tail.rkt"))

(define solutions (list
  brute-do:two-sum
  skip-tail:two-sum
  linear-tail:two-sum))

(provide solutions)
