using System;

class Program
{
    // Метод для проверки, есть ли в числе нечетное количество цифр
    static bool HasOddDigits(int num)
    {
        // Если количество цифр в числе нечетное
        return num.ToString().Length % 2 != 0;
    }

    static void Main()
    {
        Console.Write("Введите количество элементов: ");
        int n = int.Parse(Console.ReadLine()); // Читаем количество чисел

        int count = 0; // Инициализируем счётчик

        for (int i = 0; i < n; i++)
        {
            Console.Write("Введите число: ");
            int num = int.Parse(Console.ReadLine()); // Читаем число
            if (HasOddDigits(num))
            {
                count++; // Увеличиваем счётчик, если количество цифр в числе нечетное
            }
        }

        Console.WriteLine(count); // Выводим количество чисел с нечетным количеством цифр
    }
}
