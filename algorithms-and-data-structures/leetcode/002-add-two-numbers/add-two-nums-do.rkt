#lang typed/racket

; Compute sum of two numbers, where the numbers' digits are represented as
; non-negative integers in a list.
; Uses an imperative approach with mutation in a do loop.
; Complexity: time O(n), space O(n).
(: add-listnums (-> (Listof Integer) (Listof Integer) (Listof Integer)))
(define (add-listnums listnum-a listnum-b)
  (do
    ( [list-a listnum-a]
      [list-b listnum-b]
      [val-a 0]
      [val-b 0]
      [sum 0]
      [digit 0]
      [carry 0]
      [result : (Listof Integer) empty] )

    ( (and (empty? list-a) (empty? list-b) (zero? carry))
      (reverse result) )

    (set! val-a (if (empty? list-a) 0 (first list-a)))
    (set! val-b (if (empty? list-b) 0 (first list-b)))
    (set! sum (+ val-a val-b carry))
    (set! digit (remainder sum 10))
    (set! carry (quotient sum 10))
    (set! result (cons digit result))
    (set! list-a (if (empty? list-a) empty (rest list-a)))
    (set! list-b (if (empty? list-b) empty (rest list-b)))))

(provide add-listnums)
