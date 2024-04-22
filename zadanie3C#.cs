using System;

class Program
{
    // Функция для переворачивания числа
    static int ReverseNumber(int num)
    {
        // Переменная для хранения перевернутого числа
        int reversed = 0;
        while (num > 0)
        {
            // Получение последней цифры числа
            int remainder = num % 10;
            // Добавление последней цифры к перевернутому числу
            reversed = (reversed * 10) + remainder;
            // Удаление последней цифры из числа
            num = num / 10;
        }
        return reversed;
    }

    static void Main()
    {
        // Ввод количества чисел
        Console.Write("Введите количество чисел: ");
        int n = int.Parse(Console.ReadLine());

        // Ввод чисел и переворачивание их
        for (int i = 0; i < n; i++)
        {
            Console.Write("Введите число: ");
            // Чтение строки из стандартного ввода и преобразование её в число
            int num = int.Parse(Console.ReadLine());
            // Вывод перевернутого числа
            Console.WriteLine(ReverseNumber(num));
        }
    }
}