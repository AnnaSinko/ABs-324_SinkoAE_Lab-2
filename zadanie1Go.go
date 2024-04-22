// Определение пакета, в котором находится программа
package main

// Импорт необходимых пакетов
import (
	"bufio"   // Пакет для чтения ввода
	"fmt"     // Пакет для форматированного ввода-вывода
	"os"      // Пакет для работы с операционной системой
	"strings" // Пакет для работы со строками
	"unicode" // Пакет для работы с символами в Unicode
)

// Функция для подсчета гласных и согласных букв в строке
func countVowelsAndConsonants(s string) string {
	// Строка с гласными буквами
	vowels := "aeiouyAEIOUY"
	// Счетчик гласных букв
	vowelCount := 0
	// Счетчик согласных букв
	consonantCount := 0

	// Проходим по каждому символу в строке
	for _, char := range s {
		// Проверяем, является ли символ буквой
		if unicode.IsLetter(char) {
			// Если символ является гласной буквой
			if strings.ContainsRune(vowels, char) {
				// Увеличиваем счетчик гласных букв
				vowelCount++
			} else {
				// Увеличиваем счетчик согласных букв
				consonantCount++
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

// Главная функция программы
func main() {
	// Создаем новый буферизированный считыватель
	reader := bufio.NewReader(os.Stdin)
	// Выводим сообщение для пользователя
	fmt.Print("Введите строку: ")
	// Считываем строку до символа новой строки
	text, _ := reader.ReadString('\n')
	// Удаляем символ новой строки
	text = strings.TrimSpace(text)

	// Выводим результат работы функции countVowelsAndConsonants
	fmt.Println(countVowelsAndConsonants(text))
}