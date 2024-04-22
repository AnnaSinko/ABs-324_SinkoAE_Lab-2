#include <iostream>
#include <string>

using namespace std;

// Функция для подсчета гласных и согласных букв в строке
void countVowelsAndConsonants(const string& s, int& vowelCount, int& consonantCount) {
    string vowels = "aeiouyAEIOUY";
    vowelCount = 0;
    consonantCount = 0;

    // Проходим по каждому символу в строке
    for (char c : s) {
        // Если символ является гласной буквой
        if (vowels.find(c) != string::npos) {
            // Увеличиваем счетчик гласных букв
            vowelCount++;
        } else if (isalpha(c)) {
            // Увеличиваем счетчик согласных букв, если символ является буквой
            consonantCount++;
        }
    }
}

int main() {
    // Выводим сообщение для пользователя
    cout << "Введите строку:" << endl;

    // Создаем объект для чтения ввода пользователя
    string input;
    getline(cin, input);

    // Получаем количество гласных и согласных букв
    int vowelCount, consonantCount;
    countVowelsAndConsonants(input, vowelCount, consonantCount);

    // Выводим результат в форматированном виде
    cout << "Количество гласных: " << vowelCount << endl;
    cout << "Количество согласных: " << consonantCount << endl;

    // Выводим результат сравнения
    if (vowelCount > consonantCount) {
        cout << "Результат: Да" << endl;
    } else if (vowelCount < consonantCount) {
        cout << "Результат: Нет" << endl;
    } else {
        cout << "Результат: Одинаково" << endl;
    }

    return 0;
}