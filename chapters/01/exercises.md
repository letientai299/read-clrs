1.1-1
-----

Q: Give a real-world example that requires sorting or a real-world example that re-
quires computing a convex hull.

A: Sorting is required when we have to turn order the items unordered in a set. For
example, when we have to process a list of todo tasks in order of their
important, we must sort the tasks based on their level of important.

We need to protect the set of tree by a grid. For that, we will have to use
convex hull.

1.1-2
-----

Q: Other than speed, what other means of efficiency might one use in a
real-world setting?

A: Something come to mind:

- **Level of correctness**, applicable for NP-complete problems, which is known
  to have no efficient algorithm. We can only solve those problems
  approximately. Thus, the level of correctness might be vary between
  algorithms.

- **Memory consumption**. Solving the sorting problem on embedded hardware is very
  different when solving it on mainframe computer.

- **Maintainability**: The best algorithm might not be easy to understand and
  implemented for the average developer. We may need to use the easy algorithm
  to be able to deliver the product on time, and enhance it later.
