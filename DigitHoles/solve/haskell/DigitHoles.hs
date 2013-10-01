module DigitHoles where 

{-numHoles :: Int -> Int-}
{-numHoles n = if (n `div` 10) == 0 then holes (n `mod` 10)-}
             {-else holes (n `mod` 10) + numHoles (n `div` 10)-}

numHoles :: Int -> Int
numHoles 0 = 0
numHoles n = holes (mod n 10) + numHoles (div n 10)

holes :: Int -> Int
holes 0 = 1
holes 4 = 1
holes 6 = 1
holes 8 = 2
holes 9 = 1
holes _ = 0
