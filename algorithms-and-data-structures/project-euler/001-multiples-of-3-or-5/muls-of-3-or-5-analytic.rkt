#lang typed/racket

; Compute sum of multiples of [num] that are less than [limit].
; 1 + 2 + 3 + ... +  n = n(n + 1) / 2
; 3 + 6 + 9 + ... + 3n = 3 (1 + 2 + 3 + ... + n)
; https://en.wikipedia.org/wiki/1_%2B_2_%2B_3_%2B_4_%2B_%E2%8B%AF
(: mul-of-sum (-> Integer Integer Integer))
(define (mul-of-sum num limit)
  (let ([ p (quotient (sub1 limit) num) ])
    (quotient (* num (* p (add1 p))) 2)))

; Compute sum of multiples of 3 or 5 that are less than [limit],
; using an analytic approach.
(: muls-of-3-or-5 (-> Integer Integer))
(define (muls-of-3-or-5 limit)
  (-
    (+ (mul-of-sum 3 limit) (mul-of-sum 5 limit))
    (mul-of-sum 15 limit))) ; Don't count multiples of both twice

(provide muls-of-3-or-5)
