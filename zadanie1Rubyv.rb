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

  # Возвращаем количество гласных и согласных букв
  { vowels: vowel_count, consonants: consonant_count }
end

# Выводим сообщение для пользователя
puts "Введите строку:"
# Считываем строку, введенную пользователем
input = gets.chomp

# Получаем количество гласных и согласных букв
result = count_vowels_and_consonants(input)

# Выводим результат в форматированном виде
puts "Количество гласных: #{result[:vowels]}"
puts "Количество согласных: #{result[:consonants]}"

# Выводим результат сравнения
if result[:vowels] > result[:consonants]
  puts "Результат: Да"
elsif result[:vowels] < result[:consonants]
  puts "Результат: Нет"
else
  puts "Результат: Одинаково"
end