-- Импорт функции elem и toLower из модуля Data.Char
import Data.Char (toLower)

-- Функция для подсчета гласных и согласных букв в строке
-- Принимает строку s и возвращает строку
countVowelsAndConsonants :: String -> String
countVowelsAndConsonants s =
    -- Определение строки гласных букв и инициализация счетчиков
    let vowels = "aeiouy"
        -- Подсчет количества гласных букв в строке s
        -- Используется генератор списков, где c - каждый символ в строке s,
        -- toLower c `elem` vowels - проверка наличия символа в строке гласных букв
        -- length - подсчет количества элементов в полученном списке
        vowelCount = length [c | c <- s, toLower c `elem` vowels]
        -- Подсчет количества согласных букв как разницы между длиной строки и количеством гласных
        consonantCount = length s - vowelCount
    -- В зависимости от количества гласных и согласных букв возвращается соответствующая строка
    in if vowelCount > consonantCount then "Да"
       else if vowelCount < consonantCount then "Нет"
       else "Одинаково"

-- Главная функция, точка входа в программу
main :: IO ()
main = do
    -- Вывод сообщения для пользователя
    putStrLn "Введите строку:"

    -- Чтение ввода пользователя
    input <- getLine

    -- Вывод результата работы функции countVowelsAndConsonants
    putStrLn $ countVowelsAndConsonants input
