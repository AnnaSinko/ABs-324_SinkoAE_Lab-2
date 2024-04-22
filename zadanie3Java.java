import java.util.Scanner; // Импорт класса Scanner для ввода с клавиатуры

public class Main {
    // Функция для переворачивания числа
    public static int reverseNumber(int num) {
        int reversed = 0; // Переменная для хранения перевернутого числа
        while (num != 0) { // Пока число не равно нулю
            reversed = reversed * 10 + num % 10; // Добавляем последнюю цифру числа к перевернутому
            num = num / 10; // Удаляем последнюю цифру из числа
        }
        return reversed; // Возвращаем перевернутое число
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in); // Создание объекта Scanner для чтения с клавиатуры

        // Ввод количества чисел
        System.out.println("Введите количество чисел:");
        int n = scanner.nextInt(); // Чтение количества чисел с клавиатуры

        // Ввод чисел и переворачивание их
        for (int i = 0; i < n; i++) { // Цикл для ввода чисел
            System.out.println("Введите число:");
            int num = scanner.nextInt(); // Чтение числа с клавиатуры
            System.out.println(reverseNumber(num)); // Вывод перевернутых чисел
        }
    }
}