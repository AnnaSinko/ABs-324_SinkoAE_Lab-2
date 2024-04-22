def count_vowels_and_consonants(s):
    # Строка с гласными буквами
    vowels = "aeiouyAEIOUY"
    # Счетчик гласных букв
    vowel_count = 0
    # Счетчик согласных букв
    consonant_count = 0

    # Проходим по каждому символу в строке s
    for char in s:
        # Если символ является гласной буквой
        if char in vowels:
            # Увеличиваем счетчик гласных букв
            vowel_count += 1
        elif char.isalpha():
            # Увеличиваем счетчик согласных букв, если символ является буквой
            consonant_count += 1

    # Возвращаем количество гласных и согласных букв
    return vowel_count, consonant_count

# Выводим сообщение для пользователя
print("Введите строку:")
# Считываем строку, введенную пользователем
input_string = input()
# Получаем количество гласных и согласных букв
vowel_count, consonant_count = count_vowels_and_consonants(input_string)

# Выводим результат в форматированном виде
print("Количество гласных:", vowel_count)
print("Количество согласных:", consonant_count)

# Выводим результат сравнения
if vowel_count > consonant_count:
    print("Результат: Да")
elif vowel_count < consonant_count:
    print("Результат: Нет")
else:
    print("Результат: Одинаково")