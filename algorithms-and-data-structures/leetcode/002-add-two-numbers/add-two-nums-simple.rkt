#lang typed/racket

; Compute sum of two numbers, where the numbers' digits are represented as
; non-negative integers in a list.
(: add-listnums (-> (Listof Integer) (Listof Integer) (Listof Integer)))
(define (add-listnums listnum-a listnum-b)
  (let loop ((list-a listnum-a) (list-b listnum-b) (carry 0))
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
          (loop rest-a rest-b (quotient sum 10)))))))

(provide add-listnums)
