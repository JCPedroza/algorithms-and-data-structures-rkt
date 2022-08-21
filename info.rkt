#lang info
(define collection "algorithms-and-data-structures")

(define deps '(
  "base"
  "rackunit-lib"
   "typed-racket-lib"
    "math-lib"))

(define build-deps '(
  "scribble-lib"
  "racket-doc"
   "rackunit-lib"))

(define scribblings '(("scribblings/algorithms-and-data-structures.scrbl" ())))
(define pkg-desc "Algorithms and data structures implemented in Racket")
(define version "0.0")
(define pkg-authors '(JCPedroza))
