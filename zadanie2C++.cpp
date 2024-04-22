#include <iostream>
#include <vector>
#include <string>

// Функция для подсчета чисел с нечетным количеством цифр
int countOddDigits(const std::vector<int>& nums) {
    int count = 0; // Инициализируем счётчик
    for (int num : nums) { // Проходим по каждому числу в векторе
        // Если количество цифр в числе нечетное
        if (std::to_string(num).length() % 2 != 0) {
            count++; // Увеличиваем счётчик
        }
    }
    return count; // Возвращаем количество чисел с нечетным количеством цифр
}

int main() {
    int n;
    std::cout << "Введите количество элементов: ";
    std::cin >> n; // Читаем количество чисел

    std::vector<int> nums; // Инициализируем вектор для хранения чисел

    for (int i = 0; i < n; i++) {
        int num;
        std::cout << "Введите число: ";
        std::cin >> num; // Читаем число
        nums.push_back(num); // Добавляем число в вектор
    }

    std::cout << countOddDigits(nums) << std::endl; // Выводим количество чисел с нечетным количеством цифр
    return 0;
}