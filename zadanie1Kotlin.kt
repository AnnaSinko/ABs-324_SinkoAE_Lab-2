import java.util.regex.Pattern

fun main() {
    // Выводим сообщение для пользователя
    println("Введите строку:")

    // Считываем строку, введенную пользователем
    val inputString = readLine() ?: ""

    // Удаляем специальные символы из строки
    val cleanedInput = inputString.replace(Regex("[^a-zA-Z0-9\\s]"), "")

    // Вызываем функцию для подсчета гласных и согласных букв
    val (vowelCount, consonantCount) = countVowelsAndConsonants(cleanedInput)

    // Вызываем функцию для вывода результата
    printResult(vowelCount, consonantCount)
}

fun countVowelsAndConsonants(s: String): Pair<Int, Int> {
    // Строка с гласными буквами
    val vowels = "aeiouyAEIOUY"
    // Счетчик гласных букв
    var vowelCount = 0
    // Счетчик согласных букв
    var consonantCount = 0

    // Проходим по каждому символу в строке s
    for (c in s) {
        // Если символ является буквой
        if (c.isLetter()) {
            // Если символ является гласной буквой
            if (c in vowels) {
                // Увеличиваем счетчик гласных букв
                vowelCount++
            } else {
                // Увеличиваем счетчик согласных букв
                consonantCount++
            }
        }
    }

    // Возвращаем количество гласных и согласных букв в виде пары
    return Pair(vowelCount, consonantCount)
}

fun printResult(vowelCount: Int, consonantCount: Int) {
    // Выводим результат в зависимости от количества гласных и согласных букв
    when {
        vowelCount > consonantCount -> println("Да")
        vowelCount < consonantCount -> println("Нет")
        else -> println("Одинаково")
    }
}