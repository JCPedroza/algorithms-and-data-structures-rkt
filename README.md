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
raco test -j 4 **/*.test.rkt # Enable up to 4 concurrent threads
```

Any unixy system, including mac

```bash
find . -name "*.test.rkt" -exec raco test \{\} +
```

---

[![total lines][90]][91]
[![code size][92]][93]
[![repo size][94]][95]

[90]: https://img.shields.io/tokei/lines/github/jcpedroza/algorithms-and-data-structures-rkt
[91]: https://img.shields.io/tokei/lines/github/jcpedroza/algorithms-and-data-structures-rkt
[92]: https://img.shields.io/github/languages/code-size/jcpedroza/algorithms-and-data-structures-rkt
[93]: https://img.shields.io/github/languages/code-size/jcpedroza/algorithms-and-data-structures-rkt
[94]: https://img.shields.io/github/repo-size/jcpedroza/algorithms-and-data-structures-rkt
[95]: https://img.shields.io/github/repo-size/jcpedroza/algorithms-and-data-structures-rkt

[0]: https://badgen.net/github/license/JCPedroza/algorithms-and-data-structures-ts
[1]: https://en.wikipedia.org/wiki/MIT_License
[2]: https://img.shields.io/badge/-Made%20with%20Racket-darkred?logo=racket
[3]: https://racket-lang.org
[4]: https://github.com/JCPedroza/algorithms-and-data-structures-rkt/actions/workflows/linux.yml/badge.svg
[5]: https://github.com/JCPedroza/algorithms-and-data-structures-rkt/actions/workflows/linux.yml
