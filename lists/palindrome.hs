-- Check if given array of unknown type is a palindrome.

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome (x:xs) = ((x:xs) == (reverseList (x:xs)))
  where 
    reverseList :: (Eq a) => [a] -> [a]
    reverseList [] = []
    reverseList (x:xs) = (reverseList xs) ++ [x]

main :: IO()
main = print(isPalindrome [1, 2, 3, 2, 1]) -- True
