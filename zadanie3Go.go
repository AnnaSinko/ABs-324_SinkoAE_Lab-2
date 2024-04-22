package main

import (
    "fmt"
)

// Функция для переворачивания числа
func reverseNumber(num int) int {
    reversed := 0 // Инициализация переменной для хранения перевернутого числа
    for num > 0 { // Цикл будет выполняться, пока num больше 0
        remainder := num % 10 // Остаток от деления на 10 даст последнюю цифру числа
        reversed = (reversed * 10) + remainder // Добавляем последнюю цифру к перевернутому числу
        num /= 10 // Удаляем последнюю цифру из исходного числа
    }
    return reversed // Возвращаем перевернутое число
}

func main() {
    // Ввод количества чисел
    var n int
    fmt.Print("Введите количество чисел: ")
    fmt.Scan(&n)

    // Переворачиваем числа и выводим без ведущих нулей
    for i := 0; i < n; i++ {
        var num int
        fmt.Print("Введите число: ")
        fmt.Scan(&num)
        fmt.Println(reverseNumber(num))
    }
}