use std::io;

// Функция для подсчета гласных и согласных букв в строке
fn count_vowels_and_consonants(s: &str) -> (i32, i32) {
    let vowels = "aeiouyAEIOUY";
    let mut vowel_count = 0;
    let mut consonant_count = 0;

    // Проходим по каждому символу в строке
    for c in s.chars() {
        // Если символ является гласной буквой
        if vowels.contains(c) {
            // Увеличиваем счетчик гласных букв
            vowel_count += 1;
        } else if c.is_alphabetic() {
            // Увеличиваем счетчик согласных букв, если символ является буквой
            consonant_count += 1;
        }
    }

    // Возвращаем количество гласных и согласных букв
    (vowel_count, consonant_count)
}

fn main() {
    // Выводим сообщение для пользователя
    println!("Введите строку:");

    // Создаем объект для чтения ввода пользователя
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Ошибка чтения");

    // Удаляем символ новой строки из введенной строки
    let input = input.trim();

    // Получаем количество гласных и согласных букв
    let (vowels, consonants) = count_vowels_and_consonants(input);

    // Выводим результат в форматированном виде
    println!("Количество гласных: {}", vowels);
    println!("Количество согласных: {}", consonants);

    // Выводим результат сравнения
    if vowels > consonants {
        println!("Результат: Да");
    } else if vowels < consonants {
        println!("Результат: Нет");
    } else {
        println!("Результат: Одинаково");
    }
}