import Foundation

// Функция, которая принимает число и возвращает true, если количество цифр в числе нечетное
func hasOddDigits(num: Int) -> Bool {
    // Если количество цифр в числе нечетное
    return String(num).count % 2 != 0
}

// Чтение количества чисел с клавиатуры
print("Введите количество элементов:")
if let n = Int(readLine()!), n > 0 {
    var count = 0 // Инициализируем счётчик
    for _ in 0..<n {
        print("Введите число:")
        if let num = Int(readLine()!), hasOddDigits(num: num) {
            count += 1 // Увеличиваем счётчик, если количество цифр в числе нечетное
        }
    }
    print(count) // Выводим количество чисел с нечетным количеством цифр
}