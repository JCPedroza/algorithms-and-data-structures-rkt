# Racket Algorithms and Data Structures

[![license MIT][0]][1]
[![made with Racket][2]][3]
[![linux build & tests][4]][5]

Algorithms and data structures implemented in Racket.

## Usage

### Unit Testing

Linux with bash, zsh, or ksh93
```bash
# bash might need shopt -s globstar first
raco test **/*.test.rkt
```

Any unixy system, including mac

```bash
find . -name "*.test.rkt" -exec raco test \{\} +
```

[0]: https://badgen.net/github/license/JCPedroza/algorithms-and-data-structures-ts
[1]: https://en.wikipedia.org/wiki/MIT_License
[2]: https://img.shields.io/badge/-Made%20with%20Racket-darkred?logo=racket
[3]: https://racket-lang.org
[4]: https://github.com/JCPedroza/algorithms-and-data-structures-rkt/actions/workflows/linux.yml/badge.svg
[5]: https://github.com/JCPedroza/algorithms-and-data-structures-rkt/actions/workflows/linux.yml
