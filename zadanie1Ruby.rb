# Определяем метод count_vowels_and_consonants, который принимает строку s в качестве аргумента
def count_vowels_and_consonants(s)
  # Строка с гласными буквами
  vowels = "aeiouyAEIOUY"
  # Счетчик гласных букв
  vowel_count = 0
  # Счетчик согласных букв
  consonant_count = 0

  # Проходим по каждому символу в строке s
  s.each_char do |char|
    # Если символ является гласной буквой
    if vowels.include?(char)
      # Увеличиваем счетчик гласных букв
      vowel_count += 1
    elsif char =~ /[a-zA-Z]/
      # Увеличиваем счетчик согласных букв, если символ является буквой
      consonant_count += 1
    end
  end

  # Возвращаем сообщение в зависимости от количества гласных и согласных букв
  if vowel_count > consonant_count
    "Да"
  elsif vowel_count < consonant_count
    "Нет"
  else
    "Одинаково"
  end
end

# Выводим сообщение для пользователя
puts "Введите строку:"
# Считываем строку, введенную пользователем
input = gets.chomp
# Выводим результат работы функции count_vowels_and_consonants
puts count_vowels_and_consonants(input)