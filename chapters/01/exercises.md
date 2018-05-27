1.1
===

1.1-1
-----

**Q**: Give a real-world example that requires sorting or a real-world example that re-
quires computing a convex hull.

**A**: Sorting is required when we have to turn order the items unordered in a set. For
example, when we have to process a list of todo tasks in order of their
important, we must sort the tasks based on their level of important.

We need to protect the set of tree by a grid. For that, we will have to use
convex hull.

1.1-2
-----

**Q**: Other than speed, what other means of efficiency might one use in a
real-world setting?

**A**: Something come to mind:

- **Level of correctness**, applicable for NP-complete problems, which is known
  to have no efficient algorithm. We can only solve those problems
  approximately. Thus, the level of correctness might be vary between
  algorithms.

- **Memory consumption**. Solving the sorting problem on embedded hardware is very
  different when solving it on mainframe computer.

- **Maintainability**: The best algorithm might not be easy to understand and
  implemented for the average developer. We may need to use the easy algorithm
  to be able to deliver the product on time, and enhance it later.

> TODO: what else?

1.1-3
-----

**Q**: Select a data structure that you have seen previously, and discuss its
strengths and limitations

**A**: I'll try my best with **single liked list**.

### Strengths

- Simple to implement. We just only need to understand a little bit about
  pointer (or reference)
- Fast for insertion and removal
- Make use of memory efficiently. We allocate when we need, and we give back
  memory for the OS when we remove any node.
- This simple data structure is the foundation to build up other complex data
  structure (tree, graph, double linked list, skip list, ...)

### Limitations

- There's only one way to travel on the list: visit node one by one, from the
  start to the end. Thus, it's slow for searching.
- When the concrete data per node is small (a single byte, for example), the
  memory that needed to store the reference will become the burden (at least 4
  bytes for a reference) when compare with the data.

1.1-4
-----

**Q**: How are the shortest-path and traveling-salesman problems given above similar?
How are they different?

**A**:

It's hard to pretend that I don't know the concept of the graph, thus, I'll use
it during answer this question.

### Similar

- They operate on graph (set of node which each link to other nodes via
  edges).
- The purpose is minimize the cost of traveling through the graph.

### Different

- There's several correct algorithms for shortest-path, but there's none for
  traveling-salesman. The traveling-salesman is NP-complete.

- Shortest-path has a simpler problem statement, in which the start and the end
  doesn't necessarily be the same, and path doesn't have to cover all node or
  all edges.

1.1-5
-----

**Q**: Come up with a real-world problem in which only the best solution will do.
Then come up with one in which a solution that is "approximately" the best is
good enough.

**A**: Real world problem in which only the best solution will do.

- Sort students in a class based on their scores
- Look up a text or pattern in a document
- Allocate for resource usage (room, machines, computer,...) between multiple
  parties.

The real world problem in which a solution that is "approximately" the best is
good enough.

- The traveling salesman.
- Find the _shortest_ path on the Google Maps. Shortest doesn't necessarily mean
  the distance between 2 points, in practice, we want the ways that easy to
  follow, less turns, and less traffic. And I believe monitoring traffic alone
  is a very hard problem. Thus, "approximately" is appreciated.

1.2
===

1.2-1
-----

**Q**: Give an example of an application that requires algorithmic content at
the application level, and discuss the function of the algorithms involved.

**A**: Building search and replace feature for an editor requires string
matching algorithms. The algorithm is need to quickly identify the pattern
across the file, or even the whole directory. The naive solution -
single thread, compare character one by one - is very slow on big file and
many files. Also, for unicode, a "character" might not be easy to defined. Thus,
that solution might not work correctly. We need to employ better algorithms.

1.2-2
-----


**Q**: Suppose we are comparing implementations of insertion sort and merge sort on the
same machine. For inputs of size `n`, insertion sort runs in `8n^2` steps, while
merge sort runs in `64n.lg(n)` steps. For which values of `n` does insertion sort
beat merge sort?

**A**: Basically, we need to find greatest `n` such that `8n <= 64lg(n)`, which
in turn mean `n < 8 lg(n)>`, and as `lg` in this cases stand for `log_2(n)`, we
will have `n <  44` (check the scripts)

1.2-3
-----

**Q**: What is the smallest value of `n` such that an algorithm whose running time is
`100n^2` run faster than an algorithm whose running time is `2^n` on the same
machine?

**A**: The smallest value of `n` is 15. I only wrote python version, as there's
no point to repeat the same while loop in other languages.
