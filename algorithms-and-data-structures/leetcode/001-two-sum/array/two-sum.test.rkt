#lang racket/base

(require
  rackunit
  math/array
  "two-sum.repo.rkt")

(for ([two-sum solutions])
  (check-equal?
    (two-sum (array #[11 3 9 15]) 12)
    (array #[1 2])))
