# Factorial

In mathematics, the factorial of a non-negative integer `n`, denoted by `n!`,
is the product of all positive integers less than or equal to `n`. The factorial
of `n` also equals the product of `n` with the next smaller factorial:

```text
n! = n * (n - 1)!
```

## Write the Factorial Algorithms

Write a function, `fact`, that computes the factorial of `num`. Ignore
negative numbers.

## Function Signature

```racket
(: fact (-> Integer Integer))
```

## Examples

```text
(fact 0) evaluates to 1
(fact 1) evaluates to 1
(fact 2) evaluates to 2
(fact 3) evaluates to 6
(fact 4) evaluates to 24
```

## Resources

- [Factorial at Wikipedia][0]
- [Factorial at Rosetta Code][1]

[0]: https://en.wikipedia.org/wiki/Factorial
[1]: https://rosettacode.org/wiki/Factorial
