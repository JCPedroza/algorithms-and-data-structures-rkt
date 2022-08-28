#lang racket/base

(require
  rackunit
  "muls-of-3-or-5.repo.rkt")

(for ([sol solutions])
  (check-equal? (sol -1) 0)
  (check-equal? (sol 0) 0)
  (check-equal? (sol 1) 0)
  (check-equal? (sol 3) 0)
  (check-equal? (sol 5) 3)
  (check-equal? (sol 6) 8)
  (check-equal? (sol 10) 23))
