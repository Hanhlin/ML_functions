# ML_functions
It consists of ten programs which implements different functions, such as lists and trees. 

All programs are written in ML, using SML/NJ system.

1) Implement an insertion function, insert, that takes as parameters an integer x and a sorted list of integers, L, and returns a sorted list containing all the elements of L along with x inserted in the appropriate place.

2) Implement an insertion sort function sort that takes an unsorted list of integers, L, and returns a list containing the elements of L in sorted order. Use the insert function above.

3) Implement the function polySort, which is a polymorphic version of your insertion sort func- tion. polySort should sort a list of elements of any type. In order to do this, sort must take an additional parameter, the < (less-than) operator, that operates on the element types of the list. Furthermore, the definition of an insertion function, insert (analogous to your insert function, above), should be nested inside your polySort function (by using the let construct)

4) Implement a function fold that takes a function f, a list L, and a value b, such that if L is empty, fold returns b. Otherwise, assuming L is of the form [x1, x2, x3, ... the result of f(x1,f(x2,f(x3,...f(xn,b)...)))).

5) Define a polymorphic type ’a tree using ML’s datatype facility. That is, each interior node can have an arbitrary number of children, rather than just two (as in a binary tree).

6) Implement the fringe function, analogous to the one I wrote in class, that returns the fringe of an ’a tree (above). The fringe of a tree is the list of values appearing at the leaves of a tree.

7) Define a polymorphic function mapTree that takes as parameters a function f and an ’a tree, T, and returns a tree having the same structure as T, except that f has been applied to each element found at a leaf of T.

8) Define a polymorphic sortTree function that, given an ’a list tree (for some type ’a, so that each leaf has a list of elements of type ’a), returns a new tree that is identical to the original tree, except that the list at each leaf is sorted. Must use the polymorphic insertion sort function above, so must also take the < (less-than) operator as a parameter.

9) Define a polymorphic mergeList function that takes two sorted lists and returns a sorted list containing the elements of both lists. Since it is polymorphic, it also needs to take the < operator as a parameter.

10) Define a polymorphic function mergeTree that, given an ’c list tree (for some type ’c), returns a sorted list (of type ’c list) of all the elements found at all the leaves of the tree. It should build on previous functions.


