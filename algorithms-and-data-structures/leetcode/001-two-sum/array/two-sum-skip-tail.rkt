#lang typed/racket

(require math/array)

; Scan for a sum match, in relation to pivot, from addend to end of array.
; Uses skip trial sum and tail call recursion.
; Complexity: time AO(n) BO(1)? WO(n), space AO(1) TO(n)
(: scan (-> Integer (Array Integer) Integer Integer (Array Integer)))
(define (scan target numbers pivot addend)
  (cond
    [ (<= addend pivot) (array #[]) ]

    [ (=
        (+
          (array-ref numbers (vector pivot))
          (array-ref numbers (vector addend)))
        target)
      (array #[pivot addend]) ]

    [ #t (scan target numbers pivot (sub1 addend)) ]))


; Find the indexes of the two numbers that add up to the target.
; Uses skip trial sum and tail call recursion.
; Complexity: time AO(n²) BO(1)? WO(n²), space AO(1) TO(n)
(: two-sum (-> Integer (Array Integer) (Array Integer)))
(define (two-sum target numbers) (array 0)
  (let loop ((pivot 0) (result : (Array Integer) (array #[])))
    (if
      (not (zero? (array-size result)))
      result
      (loop (add1 pivot) (scan target numbers pivot (add1 pivot))))))

(provide two-sum)
