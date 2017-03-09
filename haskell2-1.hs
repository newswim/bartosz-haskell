
-- Within Haskell, the arguments passed to functions are a bit different than
-- we may be used to in other languages, however the syntax looks very similar.

-- Let's use the sqDist function from the previous lesson, but instead
-- of distinct arguments, we specify one PAIR of arguments.

sqDist :: Num a => (a, a) -> a
sqDist p = (fst p)^2 + (snd p)^2

-- and now let's evoke the function
-- sqDist(3, 4)
-- output: 25

-- In this case, (3, 4) is a PATTERN, which can then be MATCHED
