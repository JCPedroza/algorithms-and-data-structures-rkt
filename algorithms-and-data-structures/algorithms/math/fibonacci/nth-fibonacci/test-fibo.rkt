#lang racket/base

(require
  rackunit
  (prefix-in for: "fibo-for.rkt")
  (prefix-in matrix: "fibo-matrix.rkt")
  (prefix-in simple: "fibo-simple.rkt")
  (prefix-in tail-call: "fibo-tail-call.rkt")
  (prefix-in memo-hash: "fibo-memo-hash.rkt"))

(define test-subjects (list
  for:fibo
  matrix:fibo
  simple:fibo
  tail-call:fibo
  memo-hash:fibo))

(for ([fibo test-subjects])
  (check-equal? (fibo 0) 0)
  (check-equal? (fibo 1) 1)
  (check-equal? (fibo 2) 1)
  (check-equal? (fibo 3) 2)
  (check-equal? (fibo 4) 3)
  (check-equal? (fibo 5) 5)
  (check-equal? (fibo 6) 8))
