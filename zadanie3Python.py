# Функция для переворачивания числа
def reverse_number(num):
    return int(str(num)[::-1])

# Ввод количества чисел
# Вывод сообщения на экран и считывание количества чисел с клавиатуры
n = int(input("Введите количество чисел:"))

# Переворачиваем числа и выводим без ведущих нулей
for _ in range(n):
    # Вывод сообщения на экран и считывание числа с клавиатуры
    num = int(input("Введите число:"))
    # Вывод перевернутого числа
    print(reverse_number(num))