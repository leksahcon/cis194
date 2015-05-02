--This program will validate credit card numbers



-- Takes a number and determines how many digits are
-- available by dividing them by intervals of 10^0 - 10^10000.
intList :: Integer -> [Integer]
intList x = [x `div` (10^y) | y <- [1000,999..0]]

--Uses the number list generated by 'intList' and 
--filters out all the zeroes to ensure an accurate digit
--count.
intList2 :: Integer -> [Integer]
intList2 x = [x | x <- (intList x), x /=0]

toDigits :: Integer -> [Integer]
toDigits 0 = [0]
toDigits x = [x `mod` 10 | x <- (intList2 x)]

--Reverses the output of "toDigits"
toDigitsRev :: Integer -> [Integer]
toDigitsRev 0 = [0]
toDigitsRev x = reverse(toDigits x)


-------------------------------------------------
--This is where I try to double everyother number.
-- *NEED TO TRY AND USE PATTERN MATCHING*

doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther (x:y:_) = x:y*2:[]  




