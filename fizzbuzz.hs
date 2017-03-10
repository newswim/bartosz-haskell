-- Write a program that prints out the numbers 1 to 100 (inclusive). If the number is divisible by 3, print Crackle instead of the number. If it's divisible by 5, print Pop. If it's divisible by both 3 and 5, print CracklePop. You can use any language.

-- cracklePop :: Integer -> String
cracklePop n
    | n `mod` 3 == 0 &&
      n `mod` 5 == 0 = "CracklePop"
    | n `mod` 3 == 0 = "Crackle"
    | n `mod` 5 == 0 = "Pop"
    | otherwise      = show n

main = mapM_ putStrLn (map cracklePop [1..100])
