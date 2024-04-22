import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        // Создаем объект Scanner для чтения ввода пользователя
        Scanner scanner = new Scanner(System.in);

        // Выводим сообщение для пользователя
        System.out.println("Введите строку:");

        // Считываем строку, введенную пользователем
        String inputString = scanner.nextLine();

        // Удаляем специальные символы из строки
        String cleanedInput = inputString.replaceAll("[^a-zA-Z0-9\\s]", "");

        // Выводим результат работы функции countVowelsAndConsonants
        System.out.println(countVowelsAndConsonants(cleanedInput));

        // Закрываем Scanner
        scanner.close();
    }

    public static String countVowelsAndConsonants(String s) {
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

        // Возвращаем сообщение в зависимости от количества гласных и согласных букв
        if (vowelCount > consonantCount) {
            return "Да";
        } else if (vowelCount < consonantCount) {
            return "Нет";
        } else {
            return "Одинаково";
        }
    }
}