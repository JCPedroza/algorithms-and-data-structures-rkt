#lang typed/racket

; Compute sum of multiples of 3 or 5 that are less than [limit]
; using brute force trial division and tail call recursion.
(: muls-of-3-or-5 (-> Integer Integer))
(define (muls-of-3-or-5 limit)
  (let loop ((sum 0) (idx 3))
    (cond
      [ (>= idx limit) sum ]

      [ (or
          (zero? (modulo idx 3))
          (zero? (modulo idx 5)))
        (loop (+ idx sum) (add1 idx)) ]

      [ #t (loop sum (add1 idx)) ])))

(provide muls-of-3-or-5)
