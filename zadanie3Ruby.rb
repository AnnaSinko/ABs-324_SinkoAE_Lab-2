# Функция для переворачивания числа
def reverse_number(num)
  num.to_s.reverse.to_i
end

# Выводим сообщение на экран и считываем количество чисел с клавиатуры
puts "Введите количество чисел:"
# Читаем введенную строку, удаляем символ новой строки и преобразуем в число
n = gets.chomp.to_i

# Вводим числа и переворачиваем их
n.times do
  # Выводим сообщение на экран
  puts "Введите число:"
  # Читаем введенную строку, удаляем символ новой строки, преобразуем в число и переворачиваем
  puts reverse_number(gets.chomp.to_i)
end