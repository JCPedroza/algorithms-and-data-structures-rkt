#lang typed/racket

(require
  (prefix-in brute-tail: "even-fibo-brute-tail.rkt")
  (prefix-in third-tail: "even-fibo-third-tail.rkt")
  (prefix-in skip-tail: "even-fibo-skip-tail.rkt"))

(define solutions
  (list
    brute-tail:even-fibo-sum
    third-tail:even-fibo-sum
    skip-tail:even-fibo-sum))

(provide solutions)
