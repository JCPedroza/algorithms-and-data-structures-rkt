#lang racket/base

(require
  rackunit
  (prefix-in simple-cond: "list-map-simple-cond.rkt")
  (prefix-in simple-if: "list-map-simple-if.rkt")
  (prefix-in tail-cond: "list-map-tail-cond.rkt")
  (prefix-in tail-if: "list-map-tail-if.rkt"))

(define test-subjects (list
  simple-cond:map
  simple-if:map
  tail-cond:map
  tail-if:map))

(for ([map test-subjects])
  (test-equal?
    "Double integers with lambda"
    (map
      (lambda (x) (* x 2))
      '(1 2 3 4))
    '(2 4 6 8))

  (test-equal?
    "Is integer even? with built-in"
    (map
      even?
      '(1 2 3 4))
    '(#f #t #f #t)))
