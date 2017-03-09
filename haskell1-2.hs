
-- main.hs


-- A bowl! aka. The square distance of two numbers

sqDist :: Int -> Int -> Int
sqDist x y = x^2 + y^2

-- :a: is a TYPE VARIABLE

-- There are several notions of power in Haskell, namely (^), (^^), (**)
-- https://wiki.haskell.org/Power_function


-- MAIN is a nullary function -- meaning it takes no arguments

main :: IO ()
main = print (sqDist 3 4)

-- in this case, we have to use parenthesis because PRINT is a unary function

-- "In-lining" // Eta Conversion

-- main = print (3^2 + 4^2)

-- main = print ((3^2 + 4^2) + (7^2 + 8^2))

-- :t print
-- print :: Show a => a -> IO ()
-- IO () == I/O of Unit



------- Terminology
-- Reduction
-- Substitution
-- Eta Conversion       : https://wiki.haskell.org/Eta_conversion
-- Beta Reduction       : https://wiki.haskell.org/Beta_reduction
