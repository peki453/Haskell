-- Eliminate consecutive duplicates of list elements. The order of the elements should not be changed.
--
-- compress [1, 1, 1, 2, 3, 2, 2, 4]
-- [1, 2, 3, 2, 4]

compress :: [Int] -> [Int]
compress [] = []
compress (x:xs) = (x : compressCurrent x xs)
  where 
    compressCurrent :: Int -> [Int] -> [Int]
    compressCurrent curr [] = []
    compressCurrent curr (x:xs) 
      | (curr == x)  = compressCurrent curr xs
      | otherwise    = x : (compressCurrent x xs)

main :: IO()
main = print(compress [1, 1, 1, 2, 3, 2, 2, 4]) -- [1,2,3,2,4]
