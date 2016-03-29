-- 1 Retorna o quadrado da lista
quadrado :: [Int] -> [Int]
quadrado [] = []
quadrado lis = (head lis ^ 2) : quadrado(tail lis)

-- 2 Retorna a string com Sr. no inicio
addSr :: [String] -> [String]
addSr [] = []
addSr lis =  ("Sr. " ++ head lis) : addSr(tail lis)

--3 Retorna número de espaços na string
contaEspaco :: String -> Int
contaEspaco [] = 0
contaEspaco nome = if (head nome) == ' ' then 1+ contaEspaco(tail nome) else contaEspaco(tail nome)

--4 Calcula 3*n^2 + 2/n + 1
calculo :: [Float] -> [Float]
calculo [] = []
calculo lis = (3*(head lis)^2 + 2/(head lis) + 1) : calculo(tail lis)

--5 Retorna os números negativos
negativos :: [Int] -> [Int]
negativos [] = []
negativos lis = if (head lis) < 0 then (head lis) : negativos(tail lis)  else negativos(tail lis)


--6 Retira vogais
semVogais :: String -> String
semVogais nome = filter(`notElem` "aeiouAEIOU") nome

--7 Retira vogais com recursão
semVogais2 :: String -> String
semVogais2 [] = []
semVogais2 (x:xs)
  |not( x `elem` "aeiouAEIOU") = x: semVogais2 xs
  |otherwise = semVogais2 xs

--8 Substitui caracteres por -
codifica :: String -> String
codifica nome = map(\x -> if x /= ' ' then '-' else x) nome

--9 Substitui caracteres por - com recursão
codifica2 :: String -> String
codifica2 [] = []
codifica2 (x:xs) = if x /= ' ' then '-' : codifica2 xs else x : codifica2 xs

--10 Verifica se char está contido na string
charFound :: Char -> String -> Bool
charFound _ "" = False
charFound c (x:xs) = if c == x then True else charFound c xs 

--12 Produto par a par entre duas listas
prodVet :: [Int] -> [Int] -> [Int]
prodVet _ [] = []
prodVet [] _ = []
prodVet (x:xs) (y:ys) = (x * y) : prodVet xs ys

--13 Produto par a par entre duas listas sem recursão
prodVet2 :: [Int] -> [Int] -> [Int]
prodVet2 lis1 lis2 = zipWith (*) lis1 lis2

--14 Retorna os numeros de 1 a n e seus quadrados
--(só consegui fazer ao contrário)
geraTabela :: Int ->  [(Int, Int)]
geraTabela 0 = []
geraTabela n = (n,n^2) : geraTabela (n - 1)