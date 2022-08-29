#lang typed/racket

; Sum of multiples of 3 or 5 below the limit
(: muls-of-3-or-5 (-> Integer Integer))
(define (muls-of-3-or-5 limit)
  (let ([sum 0])
    (for ([idx limit])
      (when (or (zero? (modulo idx 3))
                (zero? (modulo idx 5)))
            (set! sum (+ idx sum))))
    sum))

(provide muls-of-3-or-5)
