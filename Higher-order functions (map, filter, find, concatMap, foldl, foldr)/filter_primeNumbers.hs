-- Write function that returns all prime numbers from given list.
--
-- filterPrimeNumbers [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
-- [2, 3, 5, 7]

isPrime :: Int -> Bool
isPrime 1 = False
isPrime n = checkDivision n (n-1)
  where
    checkDivision :: Int -> Int -> Bool
    checkDivision n 1 = True
    checkDivision n m
      | ((mod n m) == 0) = False
      | otherwise        = checkDivision n (m-1)

filterPrimeNumbers :: [Int] -> [Int]
filterPrimeNumbers (x) = filter isPrime (x)

main :: IO()
main = print (filterPrimeNumbers [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
