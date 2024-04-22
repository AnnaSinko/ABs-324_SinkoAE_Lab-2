// Импортируем модуль Foundation, который содержит базовые классы и функции, необходимые для работы с Swift
import Foundation

// Определяем функцию countVowelsAndConsonants, которая принимает строку s и возвращает строку
func countVowelsAndConsonants(s: String) -> String {
    // Строка с гласными буквами
    let vowels = "aeiouyAEIOUY"
    // Счетчик гласных букв
    var vowelCount = 0
    // Счетчик согласных букв
    var consonantCount = 0

    // Проходим по каждому символу в строке s
    for char in s {
        // Если символ является буквой
        if char.isLetter {
            // Если символ является гласной буквой
            if vowels.contains(char) {
                // Увеличиваем счетчик гласных букв
                vowelCount += 1
            } else {
                // Увеличиваем счетчик согласных букв
                consonantCount += 1
            }
        }
    }

    // Возвращаем сообщение в зависимости от количества гласных и согласных букв
    if vowelCount > consonantCount {
        return "Да"
    } else if vowelCount < consonantCount {
        return "Нет"
    } else {
        return "Одинаково"
    }
}

// Считываем строку из стандартного ввода
if let input = readLine() {
    // Если строка успешно считана, передаем ее в функцию countVowelsAndConsonants и выводим результат
    print(countVowelsAndConsonants(s: input))
} else {
    // Если строка не считана (например, если была нажата клавиша Enter без ввода текста), выводим сообщение об ошибке
    print("Не удалось прочитать строку")
}