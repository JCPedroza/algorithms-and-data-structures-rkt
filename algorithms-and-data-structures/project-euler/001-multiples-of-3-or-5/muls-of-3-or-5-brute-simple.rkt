#lang typed/racket

; Compute sum of multiples of 3 or 5 that are less than [limit],
; using brute force trial division and simple recursion.
(: muls-of-3-or-5 (-> Integer Integer))
(define (muls-of-3-or-5 limit)
  (let ([sublim (sub1 limit)])
    (cond
      [ (< sublim 3) 0 ]

      [ (or
          (zero? (modulo sublim 3))
          (zero? (modulo sublim 5)))
        (+ sublim (muls-of-3-or-5 sublim))]

      [ #t (muls-of-3-or-5 sublim) ])))

(provide muls-of-3-or-5)
