#lang typed/racket

(require
  (prefix-in forloop: "fact-for.rkt")
  (prefix-in simple: "fact-simple.rkt")
  (prefix-in tail: "fact-tail.rkt")
  (prefix-in fold: "fact-fold.rkt")
  (prefix-in doloop: "fact-do.rkt")
  (prefix-in native: "fact-native.rkt"))

(define algorithms
  (list
    forloop:fact
    simple:fact
    tail:fact
    fold:fact
    doloop:fact
    native:fact))

(provide algorithms)
