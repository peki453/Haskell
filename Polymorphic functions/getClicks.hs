-- Write function that will return all points where user clicked.
--
-- getClicks [Click, Move 1, Move 2, Click, Click, Move 3, Move 4, Click, Move 5]
-- [2, 2, 4]

data Event = Click | Move Int

--getClicks :: [Event] -> [Int]
getClicks events = helper Nothing events
  where
    helper _ [] = []
    helper _ (Move x : events) = helper (Just x) events
    helper Nothing (Click : events) = helper Nothing events
    helper (Just x) (Click : events) = x : helper (Just x) events

main :: IO()
main = print (getClicks [Click, Move 1, Move 2, Click, Click, Move 3, Move 4, Click, Move 5]) -- [2, 2, 4]
