import java.util.Scanner // Импорт класса Scanner для ввода с клавиатуры

// Функция для переворачивания числа
fun reverseNumber(num: Int): Int {
    var reversed = 0 // Переменная для хранения перевернутого числа
    var num = num // Копия исходного числа, чтобы не изменять оригинал
    while (num > 0) { // Пока число больше нуля
        reversed = reversed * 10 + num % 10 // Добавляем последнюю цифру числа к перевернутому
        num /= 10 // Удаляем последнюю цифру из числа
    }
    return reversed // Возвращаем перевернутое число
}

fun main() {
    val scanner = Scanner(System.`in`) // Создание объекта Scanner для чтения с клавиатуры

    // Ввод количества чисел
    println("Введите количество чисел:")
    val n = scanner.nextInt() // Чтение количества чисел с клавиатуры

    // Ввод чисел и переворачивание их
    for (i in 0 until n) { // Цикл для ввода чисел
        println("Введите число:")
        val num = scanner.nextInt() // Чтение числа с клавиатуры
        println(reverseNumber(num)) // Вывод перевернутых чисел
    }
}