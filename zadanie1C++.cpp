#include <iostream>
#include <string>

using namespace std;

// Функция для проверки, является ли символ буквой
bool isLetter(char c) {
    return (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z');
}

// Функция для подсчета гласных и согласных букв в строке
string countVowelsAndConsonants(string s) {
    string vowels = "aeiouyAEIOUY";
    int vowelCount = 0;
    int consonantCount = 0;

    string lettersOnly = "";
    // Создаем новую строку, содержащую только буквы из исходной строки
    for (char c : s) {
        if (isLetter(c)) {
            lettersOnly += c;
        }
    }

    // Проходим по каждой букве в строке с буквами
    for (char c : lettersOnly) {
        // Если символ является гласной буквой
        if (vowels.find(c) != string::npos) {
            // Увеличиваем счетчик гласных букв
            vowelCount++;
        }
        else {
            // Увеличиваем счетчик согласных букв
            consonantCount++;
        }
    }

    // Возвращаем сообщение в зависимости от количества гласных и согласных букв
    if (vowelCount > consonantCount) {
        return "Да";
    }
    else if (vowelCount < consonantCount) {
        return "Нет";
    }
    else {
        return "Одинаково";
    }
}

int main() {
    // Выводим сообщение для пользователя
    cout << "Введите строку:" << endl;

    // Создаем объект для чтения ввода пользователя
    string input;
    getline(cin, input);

    // Выводим результат работы функции countVowelsAndConsonants
    cout << countVowelsAndConsonants(input) << endl;

    return 0;
}
