#lang racket/base

(require rackunit "fact.repo.rkt")

(for ([fact algorithms])
  (check-equal? (fact 0) 1)
  (check-equal? (fact 1) 1)
  (check-equal? (fact 2) 2)
  (check-equal? (fact 3) 6)
  (check-equal? (fact 4) 24))
