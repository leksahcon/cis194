--This program will validate credit card numbers

--toDigits    :: Integer -> [Integer]
--toDigits = [10,100..]

--toDigitsRev :: Integer -> [Integer]



intList :: Integer -> [Integer]
intList x = [x `div` (10^y) | y <- [0..5]]

--intListNoZero :: [Integer] -> [Integer]
--intListNoZero intList x
     


intListLength :: [Integer] -> Integer
intListLength []      = 0
intListLength (x:xs)  = 1 + intListLength xs


toDigits :: Integer -> [Integer]
toDigits x = [div (mod x (10^y)) (10^(y-1)) | y <- [4,3..1]]


