#lang racket/base

(do
  ( [pivot 0 (+ pivot 1)]
    [addend 0 (+ addend 1)])
  ((> addend 3) (println "finish"))
  (println (list pivot addend)))
