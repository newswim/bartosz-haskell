
-- Within Haskell, the arguments passed to functions are a bit different than
-- we may be used to in other languages, however the syntax looks very similar.

-- Let's use the sqDist function from the previous lesson, but instead
-- of distinct arguments, we specify one PAIR of arguments.

sqDist :: Num a => (a, a) -> a
sqDist p = (fst p)^2 + (snd p)^2

-- and now let's evoke the function

main1 = print(sqDist(3, 4))
-- output: 25

-- In this case, (3, 4) is a PATTERN, which can then be MATCHED



-- An exercise in precendence . .


sq x = x * x

main2 = print $ sq 2 + 3
-- output: 7

-- The space after [sq] is in the fact the _strongest_ binding
-- What we probably meant was...

main3 = print $ sq (2 + 3)
-- output: 25

-- Alternatively, we could use another `$` operator

main4 = print $ sq $ 2 + 3



-- Another exercise...


dist pt = sqrt $ sqDist pt
