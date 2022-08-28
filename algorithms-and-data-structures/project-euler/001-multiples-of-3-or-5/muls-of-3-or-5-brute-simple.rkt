#lang typed/racket

; Sum of multiples of 3 or 5 below the limit
(: muls-of-3-or-5 (-> Integer Integer))
(define (muls-of-3-or-5 limit)
  (let ([num (sub1 limit)])
    (cond
      [(< num 3) 0] 
    
      [(or (zero? (modulo num 3))
           (zero? (modulo num 5)))
      (+ num (muls-of-3-or-5 num))]      
    
      [#t (muls-of-3-or-5 num)])))

(provide muls-of-3-or-5)
