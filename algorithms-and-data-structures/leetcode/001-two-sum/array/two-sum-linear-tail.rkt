#lang typed/racket

(require math/array)

; Find the indexes of the two numbers that add up to the target value.
; Uses a functional, optimized, approach with rail call recursion.
; Complexity: time AO(n) BO(1) WO(n), space AO(1) TO(n)
(: two-sum (-> Integer (Array Integer) (Array Integer)))
(define (two-sum target numbers)
  (let loop ((table : (HashTable Integer Integer) (make-hash)) (idx 0))
    (if (>= idx (array-size numbers)) (array #[-1 -1])
      (let
        ([dif (- target (array-ref numbers (vector idx)))])
        (if
          (hash-has-key? table dif)
          (array #[(hash-ref table dif) idx])
          (begin
            (hash-set! table (array-ref numbers (vector idx)) idx)
            (loop table (add1 idx))))))))

(provide two-sum)
