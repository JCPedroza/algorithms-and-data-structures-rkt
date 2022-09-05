#lang typed/racket

(require
  (prefix-in add-two-simple: "add-two-nums-simple.rkt")
  (prefix-in add-two-do: "add-two-nums-do.rkt")
  (prefix-in add-two-tail: "add-two-nums-tail.rkt"))

(define solutions (list
  add-two-simple:add-listnums
  add-two-do:add-listnums
  add-two-tail:add-listnums))

(provide solutions)
