#lang racket/base

(require
  rackunit
  "even-fibo.repo.rkt")

(for ([ fun solutions ])
  (check-equal? (fun -1) 0 "f(-1)")
  (check-equal? (fun 0) 0 "f(0)")
  (check-equal? (fun 2) 2 "f(2)")
  (check-equal? (fun 10) 10 "f(10)")
  (check-equal? (fun 60) 44 "f(60)"))
