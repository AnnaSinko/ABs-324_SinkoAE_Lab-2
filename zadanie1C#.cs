using System;
using System.Text.RegularExpressions;

class Program
{
    static void Main()
    {
        // Выводим сообщение для пользователя
        Console.Write("Введите строку: ");
        // Считываем строку, введенную пользователем
        string input = Console.ReadLine();
        // Удаляем специальные символы из строки
        string cleanedInput = RemoveSpecialCharacters(input);
        // Выводим результат работы функции CountVowelsAndConsonants
        Console.WriteLine(CountVowelsAndConsonants(cleanedInput));
    }

    static string RemoveSpecialCharacters(string str)
    {
        // Регулярное выражение для поиска и удаления всех символов, кроме букв и цифр
        string pattern = @"[^a-zA-Z0-9\s]";
        return Regex.Replace(str, pattern, "");
    }

    static string CountVowelsAndConsonants(string s)
    {
        // Строка с гласными буквами
        string vowels = "aeiouyAEIOUY";
        // Счетчик гласных букв
        int vowelCount = 0;
        // Счетчик согласных букв
        int consonantCount = 0;

        // Проходим по каждому символу в строке
        foreach (char c in s)
        {
            // Если символ является буквой
            if (Char.IsLetter(c))
            {
                // Если символ является гласной буквой
                if (vowels.Contains(c))
                {
                    // Увеличиваем счетчик гласных букв
                    vowelCount++;
                }
                else
                {
                    // Увеличиваем счетчик согласных букв
                    consonantCount++;
                }
            }
        }

        // Возвращаем сообщение в зависимости от количества гласных и согласных букв
        if (vowelCount > consonantCount)
        {
            return "Да";
        }
        else if (vowelCount < consonantCount)
        {
            return "Нет";
        }
        else
        {
            return "Одинаково";
        }
    }
}