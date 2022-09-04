#lang typed/racket

(require math/array)

; Find the indexes of the two numbers that add up to the target.
; Uses brute force trial sum in a do loop.
; Complexity: time AO(n²) BO(1)? WO(n²), space AO(1) TO(n)
(: two-sum (-> (Array Integer) Integer (Array Integer)))
(define (two-sum numbers target)
  (do
    ( [index 0 (add1 index)]
      [addend 0 (modulo index (array-size numbers))]
      [pivot 0
        (if
          (zero?
            (modulo
              (add1 index)
              (array-size numbers)))
          (add1 pivot)
          pivot)])
    ( (and
        (=
          (+
            (array-ref numbers (vector pivot))
            (array-ref numbers (vector addend)))
          target)
        (not (= pivot addend)) )
      (array #[pivot addend]))))

(provide two-sum)
