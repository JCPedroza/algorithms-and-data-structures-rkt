# Project Euler 001 - Multiples of 3 or 5

If we list all the natural numbers below 10 that are multiples of 3 or 5, we
get 3, 5, 6 and 9. The sum of these multiples is 23.

## Solve Project Euler 001

Write a function, `muls-of-3-or-5`, that takes an `integer` as argument,
`limit`, and returns the sum (as an `integer`) of all the positive multiples
of 3 or 5 that are also less than `limit`.

## Function Signature

```racket
(: muls-of-3-or-5 (-> Integer Integer))
```

## Examples

```
muls-of-3-or-5(-1) returns 0
muls-of-3-or-5(0) returns 0
muls-of-3-or-5(1) returns 0
muls-of-3-or-5(3) returns 0
muls-of-3-or-5(5) returns 3
muls-of-3-or-5(6) returns 8
muls-of-3-or-5(10) returns 23
```

## Resources

- [Project Euler Problem 001][0]
- [Project Euler Problem 001 at freeCodeCamp][1]

[0]: https://projecteuler.net/problem=1
[1]: https://www.freecodecamp.org/learn/coding-interview-prep/project-euler/problem-1-multiples-of-3-and-5
