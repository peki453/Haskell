-- Write function that returns add numbers from given list.
--
-- filterOddNumbers [1, 2, 3, 4, 5, 6, 7]
-- [1, 3, 5, 7]

filterOddNumbers :: [Int] -> [Int]
filterOddNumbers (x) = filter odd (x)

main :: IO()
main = print (filterOddNumbers [1, 2, 3, 4, 5, 6, 7]) -- [1, 3, 5, 7]
