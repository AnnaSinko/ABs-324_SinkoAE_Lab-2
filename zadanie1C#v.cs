using System;

class Program
{
    static void Main()
    {
        // Выводим сообщение для пользователя
        Console.Write("Введите строку: ");
        // Считываем строку, введенную пользователем
        string input = Console.ReadLine();

        // Получаем количество гласных и согласных букв
        CountVowelsAndConsonants(input, out int vowelCount, out int consonantCount);

        // Выводим результат в форматированном виде
        Console.WriteLine("Количество гласных: {0}", vowelCount);
        Console.WriteLine("Количество согласных: {0}", consonantCount);

        // Выводим результат сравнения
        if (vowelCount > consonantCount)
        {
            Console.WriteLine("Результат: Да");
        }
        else if (vowelCount < consonantCount)
        {
            Console.WriteLine("Результат: Нет");
        }
        else
        {
            Console.WriteLine("Результат: Одинаково");
        }
    }

    static void CountVowelsAndConsonants(string s, out int vowelCount, out int consonantCount)
    {
        // Строка с гласными буквами
        string vowels = "aeiouyAEIOUY";
        vowelCount = 0;
        consonantCount = 0;

        // Проходим по каждому символу в строке
        foreach (char c in s)
        {
            // Если символ является гласной буквой
            if (vowels.Contains(c))
            {
                // Увеличиваем счетчик гласных букв
                vowelCount++;
            }
            // Если символ не является буквой или не является гласной буквой
            else if (Char.IsLetter(c))
            {
                // Увеличиваем счетчик согласных букв
                consonantCount++;
            }
        }
    }
}