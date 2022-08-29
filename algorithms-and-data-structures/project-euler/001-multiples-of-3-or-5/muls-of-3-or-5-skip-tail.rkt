#lang typed/racket

; Add five to integer only if it's positive (larger than zero), else returns
; zero.
(: add5 (-> Integer Integer))
(define (add5 int) (if (> int 0) (+ int 5) 0))

; Compute sum of multiples of 3 or 5 that are less than the specified limit,
; using skipped sequences and tail call recursion.
(: muls-of-3-or-5 (-> Integer Integer))
(define (muls-of-3-or-5 limit)
  (let loop ((sum 0) (threes 3) (fives 5))
    (cond
      [ (>= threes limit) sum ]

      [ (>= fives limit)
        (loop sum threes 0) ] ; Fives add zero when limit is reached

      [ (zero? (modulo fives 3)) ; Don't count multiples of both twice
        (loop (+ sum threes) (+ threes 3) (add5 fives)) ]

      [ #t (loop (+ sum threes fives) (+ threes 3) (add5 fives)) ])))

(provide muls-of-3-or-5)
