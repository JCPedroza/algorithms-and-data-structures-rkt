# Nth Fibonacci Number

Each new term in the Fibonacci sequence is generated by adding the previous
two terms. By starting with 0 and 1, the first 12 terms will be:

`0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...`

Each Fibonacci number can be referenced by its index, which is its position
in the sequence, starting from 0.

Write a function that finds the `n`th Fibonacci number.

The function signature is

```racket
(: fibo (-> Integer Ingeter))
(define (fibo n) ... )
```
