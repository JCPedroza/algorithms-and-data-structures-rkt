#lang typed/racket

; Compute sum of two numbers, where the numbers' digits are represented as
; non-negative integers in a list.
; Uses a functional approach with simple recursion.
; Complexity: time O(n), space O(n).
(: add-listnums (-> (Listof Integer) (Listof Integer) (Listof Integer)))
(define (add-listnums listnum-a listnum-b)
  (let loop ((carry 0) (list-a listnum-a) (list-b listnum-b))
    (if (and (empty? list-a) (empty? list-b) (zero? carry))
      empty
      (let*
        ( [val-a (if (empty? list-a) 0 (first list-a))]
          [val-b (if (empty? list-b) 0 (first list-b))]
          [rest-a (if (empty? list-a) empty (rest list-a))]
          [rest-b (if (empty? list-b) empty (rest list-b))]
          [sum (+ val-a val-b carry)] )
        (cons
          (remainder sum 10)
          (loop (quotient sum 10) rest-a rest-b))))))

(provide add-listnums)
