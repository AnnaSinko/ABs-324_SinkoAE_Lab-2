use std::io;

// Функция для подсчета гласных и согласных букв в строке
fn count_vowels_and_consonants(s: &str) -> &'static str {
    let vowels = "aeiouyAEIOUY";
    let mut vowel_count = 0;
    let mut consonant_count = 0;

    // Проходим по каждому символу в строке
    for c in s.chars() {
        // Если символ является буквой
        if c.is_alphabetic() {
            // Если символ является гласной буквой
            if vowels.contains(c) {
                // Увеличиваем счетчик гласных букв
                vowel_count += 1;
            } else {
                // Увеличиваем счетчик согласных букв
                consonant_count += 1;
            }
        }
    }

    // Возвращаем сообщение в зависимости от количества гласных и согласных букв
    match vowel_count.cmp(&consonant_count) {
        std::cmp::Ordering::Greater => "Да",
        std::cmp::Ordering::Less => "Нет",
        std::cmp::Ordering::Equal => "Одинаково",
    }
}

fn main() {
    // Выводим сообщение для пользователя
    println!("Введите строку:");

    // Создаем объект для чтения ввода пользователя
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Ошибка чтения");

    // Удаляем символ новой строки из введенной строки
    let input = input.trim();

    // Выводим результат работы функции count_vowels_and_consonants
    println!("{}", count_vowels_and_consonants(input));
}