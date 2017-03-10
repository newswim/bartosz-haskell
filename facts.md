### The core language

You can take all of Haskell and compile it into a small core language. This
core language is usually called [System FC] in academic papers, or just "The Core
Language" when you're talking about the compiler. It's really just the Lambda
calculus -- but a typed Lambda calculus.

It has Lambda application, let-case constructor literals, casts and coercions.

### $ and SPACE

Both are _function application_. Space, ie. the spaces between the arguments and
a function name in `sqDist x y :: ...` are a **binding**, in fact they are the
tightest of bindings of the formal parameters to the namespace itself.

Conversely, the `$` operator binds arguments to functions _very lightly_.

Also, expressions surrounding `$` have RTL associativity.

```haskell
print $ sqDist $ (3, 4)
```

The portion to the right of the first `$` operator will be evaluated first.




[System FC]: https://ghc.haskell.org/trac/ghc/wiki/Commentary/Compiler/FC
