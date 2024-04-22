def count_vowels_and_consonants(s):
    # Строка с гласными буквами
    vowels = "aeiouyAEIOUY"
    # Счетчик гласных букв
    vowel_count = 0
    # Счетчик согласных букв
    consonant_count = 0

    # Проходим по каждому символу в строке s
    for char in s:
        # Если символ является буквой
        if char.isalpha():
            # Если символ является гласной буквой
            if char in vowels:
                # Увеличиваем счетчик гласных букв
                vowel_count += 1
            else:
                # Увеличиваем счетчик согласных букв
                consonant_count += 1

    # Возвращаем сообщение в зависимости от количества гласных и согласных букв
    if vowel_count > consonant_count:
        return "Да"
    elif vowel_count < consonant_count:
        return "Нет"
    else:
        return "Одинаково"

# Выводим сообщение для пользователя
print("Введите строку:")
# Считываем строку, введенную пользователем
input_string = input()
# Выводим результат работы функции count_vowels_and_consonants
print(count_vowels_and_consonants(input_string))