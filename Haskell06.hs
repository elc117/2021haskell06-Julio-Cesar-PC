ends :: [Int] -> [Int]
ends lista = head lista:[last lista]

deduzame :: [Integer] -> [Integer]
deduzame [] = []
deduzame (x:xs) = x*2 : deduzame xs

deduzame2 :: [Integer] -> [Integer]
deduzame2 [] = []
deduzame2 (x:xs) = if x > 2
  then x : deduzame2 (xs) 
  else deduzame2 (xs)

geraTabela :: Int -> [(Int,Int)]
geraTabela 0 = []
geraTabela n = (n,n^2):geraTabela (n-1)

contido :: Char -> String -> Bool
contido c "" = False
contido c (x:xs) = if x == c then True else contido c xs