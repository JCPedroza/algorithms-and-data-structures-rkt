#lang racket/base

(require
  rackunit
  (prefix-in simple-selection: "fizz-buzz-simple-selection.rkt"))

(define test-subjects (list
  simple-selection:fizz-buzz))

(for ([fizz-buzz test-subjects])
  (test-equal? "Incongruent range returns empty list"
    (fizz-buzz 10 1) null)

  (test-equal? "Same-number range returns singleton"
    (fizz-buzz 15 15) '("fizzbuzz"))

  (test-equal? "Positive range"
    (fizz-buzz 10 16)
    '("buzz" "11" "fizz" "13" "14" "fizzbuzz" "16")))
