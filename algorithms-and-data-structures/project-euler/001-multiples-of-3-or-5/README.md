# Project Euler 001 - Multiples of 3 or 5

If we list all the natural numbers below 10 that are multiples of 3 or 5, we
get 3, 5, 6 and 9. The sum of these multiples is 23.

## Solve Project Euler 001

Write a function, `muls-of-3-or-5`, that takes a `limit` as argument, and
returns the sum of all the multiples of 3 or 5 that are less than the given
`limit`.

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
muls-of-3-or-5(30) returns 195
```

## Resources

- [Project Euler Problem 001][0]
- [Project Euler Problem 001 at freeCodeCamp][1]
- [1 + 2 + 3 + 4 + ... at Wikipedia][2] (useful for analytic optimization)

[0]: https://projecteuler.net/problem=1
[1]: https://www.freecodecamp.org/learn/coding-interview-prep/project-euler/problem-1-multiples-of-3-and-5
[2]: https://en.wikipedia.org/wiki/1_%2B_2_%2B_3_%2B_4_%2B_%E2%8B%AF
