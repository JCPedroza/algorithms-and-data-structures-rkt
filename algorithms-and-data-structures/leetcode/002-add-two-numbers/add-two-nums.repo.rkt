#lang typed/racket

(require
  (prefix-in add-two-simple: "add-two-nums-simple.rkt")
  (prefix-in add-two-do: "add-two-nums-do.rkt"))

(define solutions (list
  add-two-simple:add-listnums
  add-two-do:add-listnums ))

(provide solutions)
