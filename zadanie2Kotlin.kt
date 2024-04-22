import java.util.Scanner

// Функция для проверки, есть ли в числе нечетное количество цифр
fun hasOddDigits(num: Int): Boolean {
    return num.toString().length % 2 != 0
}

fun main() {
    val scanner = Scanner(System.`in`) // Создаем объект Scanner для чтения ввода
    print("Введите количество элементов: ")
    val n = scanner.nextInt() // Читаем количество чисел

    var count = 0 // Инициализируем счётчик

    for (i in 0 until n) {
        print("Введите число: ")
        val num = scanner.nextInt() // Читаем число
        if (hasOddDigits(num)) {
            count++ // Увеличиваем счётчик, если количество цифр в числе нечетное
        }
    }

    println(count) // Выводим количество чисел с нечетным количеством цифр
}