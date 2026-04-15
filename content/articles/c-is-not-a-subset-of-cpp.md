---
title: C Is Not a Subset of C++
summary: >
  Exploring the mathematical definition of a subset and explaining how C++
  diverges from C.
tags: [computer science, math, programming]
date: 2026-04-07
draft: false
---

When I tell people that I program in C, they automatically assume that I've
been living underneath a rock, hiding out in my parent's basement, and wasting
away without ever seeing the sun.

They say "Just use C++! It has all the features of C and more!" But C++ and C
are not compatible.

## Strict Subsets

In mathematics, set A is a subset of set B if and only if all elements of A are
also elements of B. It can be written as "x ∈ A ⇒ x ∈ B." If you have never
seen this syntax before, essentially it reads "x is an element of A implies
that x is also an element of B". This means that _everything_ in A by
definition _must_ also be in B.

## A House Divided

This is not the case with C and C++. In fact, I think the name "C++" is
actually quite deceptive. [Bjarne
Stroustrup](https://en.wikipedia.org/wiki/Bjarne_Stroustrup)'s original
implementation of C++ was actually called "C with classes," which even more so
gives the idea that it is an _extension_ to C.

In fact, C++ is not an extension to C. It is a completely separate language,
designed by a completely separate committee, with completely separate design
goals. In order for C++ to be an extension to C, all valid C programs must also
be valid C++ programs, and they must produce the same output.

## Pointer Conversion Example

One example of C++ diverging from C and becoming incompatible is with pointer
conversion. In C, a `void` pointer can be implicitly converted to a pointer of
a different type. In C++, this is not the case!

Consider the following C program:

```c
void PointerConversion(void)
{
    void *ptr;
    int *i = ptr;
}
```

This code compiles in C, but _does not compile_ in C++![^1]

## Programmer Humor: Postfix Increment

There's a popular programming joke about the name "C++." In both C _and_ C++,
the postfix "++" operator increments a variable and returns the value before
the increment (e.g. `x++` evaluates to `x` and then sets `x` to `x + 1`). So,
in the case of "C++", if you evaluate `C++` as an expression, you will actually
get `C`, which is not the case as demonstrated above!

## Conclusion

As we've seen, C and C++ are not compatible, and whether or not C++ is actually
an improvement over C is a topic for another article.

Thanks for ready this silly but (I hope) interesting thought experiment! I hope
you learned something, or at least got a little chuckle out of it.

[^1]: Wikipedia has a few more examples of code that works in C but not in C++:
  [Compatibility of C and C++](https://en.wikipedia.org/wiki/Compatibility_of_C_and_C++)
