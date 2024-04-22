package main

import (
    "bufio"
    "fmt"
    "os"
    "strconv"
    "strings"
)

// Функция, которая принимает число и возвращает true, если количество цифр в числе нечетное
func hasOddDigits(num int) bool {
    // Если количество цифр в числе нечетное
    return len(strconv.Itoa(num))%2 != 0
}

func main() {
    reader := bufio.NewReader(os.Stdin)
    fmt.Print("Введите количество элементов: ")
    input, _ := reader.ReadString('\n')
    n, _ := strconv.Atoi(strings.TrimSpace(input))

    count := 0 // Инициализируем счётчик

    for i := 0; i < n; i++ { // Проходим по каждому числу
        fmt.Print("Введите число: ")
        input, _ := reader.ReadString('\n')
        num, _ := strconv.Atoi(strings.TrimSpace(input))
        if hasOddDigits(num) {
            count++ // Увеличиваем счётчик, если количество цифр в числе нечетное
        }
    }

    fmt.Println(count) // Выводим количество чисел с нечетным количеством цифр
}