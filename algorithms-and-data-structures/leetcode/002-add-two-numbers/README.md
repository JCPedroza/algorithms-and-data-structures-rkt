# Add Two Numbers

You are given two **non-empty** linked lists representing two non-negative
integers. The digits are stored in **reverse order**, and each of their nodes
contains a single digit. Add the two numbers and return the sum as a linked
list.

You may assume the two numbers do not contain any leading zero, except the
number 0 itself.

Use Racket's native lists. They already are linked lists.

## Function Signature

```racket
(: add-listnums (-> (Listof Integer) (Listof Integer) (Listof Integer)))
```

## Examples

```text
in: list1 = 3 -> 5 -> 1  list2 = 2 -> 6 -> 1
out: 5 -> 1 -> 3
because: 153 + 162 = 315

in: l1 = 0  l2 = 0
out: 0

in: list1 = 9 -> 9 -> -> 9 -> 9 -> 9 -> 9  list2 = 9 -> 9 -> 9
out: 8 -> 9 -> 9 -> 0 -> 0 -> 0 -> 1
```

## Constraints

- The number of nodes in each linked list is in the range [1, 100].
- 0 <= Node.val <= 9
- It is guaranteed that the list represents a number that does not have leading
zeros.


## Resources

- [Add Two Numbers at LeetCode][0]

[0]: https://leetcode.com/problems/add-two-numbers
