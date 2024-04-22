package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

// Функция для подсчета гласных и согласных букв в строке
// Теперь она возвращает количество гласных и согласных букв
func countVowelsAndConsonants(s string) (int, int) {
	vowels := "aeiouyAEIOUY"
	vowelCount := 0
	consonantCount := 0

	for _, char := range s {
		if strings.ContainsRune(vowels, char) {
			vowelCount++
		} else if (char >= 'a' && char <= 'z') || (char >= 'A' && char <= 'Z') {
			consonantCount++
		}
	}

	return vowelCount, consonantCount
}

func main() {
	reader := bufio.NewReader(os.Stdin)
	fmt.Print("Введите строку: ")
	text, _ := reader.ReadString('\n')
	text = strings.TrimSpace(text)

	// Получаем количество гласных и согласных букв
	vowelCount, consonantCount := countVowelsAndConsonants(text)

	// Выводим результат в форматированном виде
	fmt.Printf("Количество гласных: %d\nКоличество согласных: %d\n", vowelCount, consonantCount)

	// Выводим результат сравнения
	if vowelCount > consonantCount {
		fmt.Println("Результат: Да")
	} else if vowelCount < consonantCount {
		fmt.Println("Результат: Нет")
	} else {
		fmt.Println("Результат: Одинаково")
	}
}