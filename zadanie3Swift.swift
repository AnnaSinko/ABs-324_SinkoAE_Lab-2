import Foundation

// Функция для переворачивания числа
func reverseNumber(_ num: Int) -> Int {
    var reversedNum = 0
    var n = num
    while n > 0 {
        reversedNum = reversedNum * 10 + n % 10
        n /= 10
    }
    return reversedNum
}

// Ввод количества чисел
print("Введите количество чисел:")
guard let n = Int(readLine()!), n > 0 else {
    print("Некорректное количество чисел")
    exit(1)
}

// Ввод чисел и переворачивание их
for _ in 0..<n {
    print("Введите число:")
    if let input = Int(readLine()!) {
        print(reverseNumber(input))
    }
}