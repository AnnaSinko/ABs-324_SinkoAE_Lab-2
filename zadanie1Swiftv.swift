import Foundation

// Функция для подсчета гласных и согласных букв в строке
// Теперь она возвращает количество гласных и согласных букв
func countVowelsAndConsonants(s: String) -> (Int, Int) {
    let vowels = "aeiouyAEIOUY"
    var vowelCount = 0
    var consonantCount = 0

    for char in s {
        if vowels.contains(char) {
            vowelCount += 1
        } else if char.isLetter {
            consonantCount += 1
        }
    }

    return (vowelCount, consonantCount)
}

// Главная функция программы
func main() {
    // Считываем строку из стандартного ввода
    if let input = readLine() {
        // Получаем количество гласных и согласных букв
        let (vowelCount, consonantCount) = countVowelsAndConsonants(s: input)

        // Выводим результат в форматированном виде
        print("Количество гласных: \(vowelCount)")
        print("Количество согласных: \(consonantCount)")

        // Выводим результат сравнения
        if vowelCount > consonantCount {
            print("Результат: Да")
        } else if vowelCount < consonantCount {
            print("Результат: Нет")
        } else {
            print("Результат: Одинаково")
        }
    } else {
        // Если строка не считана (например, если была нажата клавиша Enter без ввода текста), выводим сообщение об ошибке
        print("Не удалось прочитать строку")
    }
}

// Вызываем главную функцию
main()