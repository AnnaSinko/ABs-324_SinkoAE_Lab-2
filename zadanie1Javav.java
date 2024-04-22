import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        // Создаем объект Scanner для чтения ввода пользователя
        Scanner scanner = new Scanner(System.in);

        // Выводим сообщение для пользователя
        System.out.println("Введите строку:");

        // Считываем строку, введенную пользователем
        String inputString = scanner.nextLine();

        // Получаем количество гласных и согласных букв
        int[] counts = countVowelsAndConsonants(inputString);

        // Выводим результат в форматированном виде
        System.out.println("Количество гласных: " + counts[0]);
        System.out.println("Количество согласных: " + counts[1]);

        // Выводим результат сравнения
        if (counts[0] > counts[1]) {
            System.out.println("Результат: Да");
        } else if (counts[0] < counts[1]) {
            System.out.println("Результат: Нет");
        } else {
            System.out.println("Результат: Одинаково");
        }

        // Закрываем Scanner
        scanner.close();
    }

    public static int[] countVowelsAndConsonants(String s) {
        String vowels = "aeiouyAEIOUY";
        int vowelCount = 0;
        int consonantCount = 0;

        // Проходим по каждому символу в строке s
        for (char c : s.toCharArray()) {
            // Если символ является гласной буквой
            if (vowels.indexOf(c) != -1) {
                // Увеличиваем счетчик гласных букв
                vowelCount++;
            } else if (Character.isLetter(c)) {
                // Увеличиваем счетчик согласных букв, если символ является буквой
                consonantCount++;
            }
        }

        // Возвращаем количество гласных и согласных букв
        return new int[]{vowelCount, consonantCount};
    }
}