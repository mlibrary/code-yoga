# Functional (Style) Programming

The goal of this exercise is to "play with" functional programming techniques
in Ruby. The most fundamental concept of functional programming is that
functions are "pure", that is, their results are based only on their arguments
and they do not modify them or anything else outside the scope of the function.
If the style is taken more rigorously, mutations like modifying temporary
variables are avoided by calling other (or recursive) functions with arguments
based on those supplied.

This is counter to how much procedural and object-oriented code is written
(relying on extensive manipulation of variables both in the scope of the function
and outside), yet the basic approach is valid and useful in languages not typically
considered "functional". The resulting functions tend to be smaller and do not
have evolving state, which can make understanding the result for given parameters
easier. Branching tends to reflect cases where the result has a different shape,
rather than the steps needed to transform the state of a value or computation.
One benefit here is that a sufficient set of test cases is often reflected
quite visibly in the code and vice versa.

Iteration and mutation are familiar and often direct; this exercise is not to
abandon or discredit them, but to focus on other techniques and compare. It is to
build your programming tool kit.

## The Inspector

To explore some of these techniques, the included test suite covers a few basic
operations on lists of integers. You are asked to implement a class named
`Inspector`.

The `Inspector` class should have a no-argument constructor and five instance
methods taking an array of integers as the only argument:

 * `sum`: sum all of the integers supplied; zero if empty
 * `max`: find the maximum value in the array; zero if empty
 * `square`: return a array of the same size, with each number squared
 * `reverse`: return the array in reverse order
 * `sort`: return the array, sorted in ascending order


**Please do not use convenience methods from Array or Enumerable. Also, try not
to make any mutations.**

