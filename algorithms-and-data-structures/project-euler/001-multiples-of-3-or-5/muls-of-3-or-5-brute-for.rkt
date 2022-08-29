#lang typed/racket

; Compute sum of multiples of 3 or 5 that are less than the specified limit,
; using brute force trial division in a for loop.
(: muls-of-3-or-5 (-> Integer Integer))
(define (muls-of-3-or-5 limit)
  (let ([sum 0])
    (for ([idx limit])
      (when
        (or
          (zero? (modulo idx 3))
          (zero? (modulo idx 5)))
        (set! sum (+ idx sum))))
    sum))

(provide muls-of-3-or-5)
