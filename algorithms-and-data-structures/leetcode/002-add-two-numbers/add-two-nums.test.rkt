#lang racket/base

(require
  rackunit
  (prefix-in repo: "add-two-nums.repo.rkt"))

(let test ((funs repo:solutions))
  (when (not (null? funs))
    (check-equal?
      ((car funs) '(0) '(0))
      '(0))

    (check-equal?
      ((car funs) '(1 2 3) '(4 5 6))
      '(5 7 9))

    (check-equal?
      ((car funs) '(4 5 6) '(7 8 9))
      '(1 4 6 1))

    (check-equal?
      ((car funs) '(7 7) '(7 7 7 7))
      '(4 5 8 7))

    (test (cdr funs))))
