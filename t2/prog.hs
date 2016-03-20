-- Eleva um numero ao quadrado (isto eh um comentario!)
doubleMe :: Int -> Int
doubleMe x = x^2

-- Verifica se um numero eh par (usa if/then/else para expressar funcao condicional)
-- mod: retorna resto da divisao inteira
isEven :: Int -> Bool
isEven n = if mod n 2 == 0 then True else False

-- Gera um numero a partir de um caracter (usa outra estrutura condicional em Haskell)
encodeMe :: Char -> Int
encodeMe c 
 | c == 'S'  = 0
 | c == 'N'  = 1
 | otherwise = 2

-- Calcula o quadrado do primeiro elemento da lista
-- Note que '[Int]' designa uma lista de elementos do tipo Int 
doubleFirst :: [Int] -> Int
doubleFirst lis = (head lis)^2

-- 1 Calcula a soma do quadrado de dois numeros
somaQuad :: Int -> Int -> Int
somaQuad x y = (x^2) + (y^2)

-- 2 Verifica se 2 listas possuem o mesmo primeiro elemento
hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads lis1 lis2 = if head lis1 == head lis2 then True else False

-- 3 Recebe uma lista de nomes e adicione a string "Sr. " no início de cada nome
addSr :: [String] -> [String]
addSr lis = map("Sr. "++) lis

-- 4 Recebe uma string e retorne o número de espaços
contaEspaco :: String -> Int
contaEspaco nome = length (filter (== ' ') nome)

-- 5 Recebe uma lista e calcula 3*n^2 + 2/n + 1 para cada elemento
calculo :: [Float] -> [Float]
calculo lis = map(\n -> 3*n^2 + 2/n + 1)lis

-- 6 Recebe uma lista de números e retorna somente os negativos
contaNegativos :: [Int] -> [Int]
contaNegativos lis = filter(<0) lis

-- 7 Recebe uma lista de números e retorna somente os que estiverem entre 1 e 100
umECem :: [Int] -> [Int]
umECem lis = filter(\x -> x > 0 && x < 101)lis

-- 8 Recebe uma lista de idades e retorna somente quem nasceu depois de 1970
calculaIdade :: [Int] -> [Int]
calculaIdade lis = filter(\x -> 2016 - x > 1970)lis

-- 9 Recebe uma lista de números e retorna os pares
pares :: [Int] -> [Int]
pares lis = filter(\x -> mod x 2 == 0)lis

-- 10 Procura char em uma string retornando true ou false
charFound :: Char -> String -> Bool
charFound c nome = c `elem` nome

-- 11
-- takeWhile (== 2) [2,2,2,1]
-- retorna até um valor ser diferente de 2, nesse caso [2,2,2]

-- 12 Recebe uma lista de nomes e retorna somente os que terminam com a
terminaComA :: [String] -> [String]
terminaComA nomes = filter(\x -> 'a' == (last x))nomes