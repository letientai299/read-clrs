main :: IO ()
-- `putStrLn` is used to print output to console, accept string
-- `show` for converting number to string
main = putStrLn (show result)

-- And here is out computation, read as:
-- get me the first result from the list of x such that x can be anything from
-- 2 and above, but x must greater than 8.lg(x)
-- Because Haskell is lazy, it will stop when we found the first item, which is
-- the only thing we want for the ex 1.2-2
result = head [x | x <- [2..], x >= 8*(logBase 2 x)]
-- TODO: Are there any better way to solve the problem in Haskell
