#lang racket/base

(require rackunit)

(requrie 
  (only-in 
    ["fibo-simple.rkt" fibo-simple]))

(check-equal? (fibo-simple 0) 0 "test")
