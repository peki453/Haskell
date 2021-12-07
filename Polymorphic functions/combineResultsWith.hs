data Result a = Success a | Failure String

combineResultsWith :: (a -> b -> c) -> Result a -> Result b -> Result c
combineResultsWith f (Success x) (Success y) = Success (f x y)
combineResultsWith f (Failure msg) _ = Failure msg
combineResultsWith f _ (Failure msg) = Failure msg

example1 = combineResultsWith (*) (Success 2) (Success 3)

main :: IO()
main = print ()
