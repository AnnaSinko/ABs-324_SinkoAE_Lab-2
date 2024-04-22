import java.util.Scanner;

public class Main {

    // Метод для проверки, есть ли в числе нечетное количество цифр
    public static boolean hasOddDigits(int num) {
        return String.valueOf(num).length() % 2 != 0;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in); // Создаем объект Scanner для чтения ввода
        System.out.print("Введите количество элементов: ");
        int n = scanner.nextInt(); // Читаем количество чисел

        int count = 0; // Инициализируем счётчик

        for (int i = 0; i < n; i++) {
            System.out.print("Введите число: ");
            int num = scanner.nextInt(); // Читаем число
            if (hasOddDigits(num)) {
                count++; // Увеличиваем счётчик, если количество цифр в числе нечетное
            }
        }

        System.out.println(count); // Выводим количество чисел с нечетным количеством цифр
    }
}