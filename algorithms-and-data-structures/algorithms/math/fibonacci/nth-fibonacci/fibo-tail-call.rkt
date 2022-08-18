#lang racket/base

(define (fibo n)
  (let loop ((now 0) (nxt 1) (idx 0))
    (if (= n idx)
        now
        (loop nxt (+ now nxt) (add1 idx)))))

(provide fibo)
