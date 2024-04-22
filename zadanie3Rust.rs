use std::io; // Импорт модуля для работы с вводом/выводом

// Функция для переворачивания числа
fn reverse_number(num: i32) -> i32 {
    let mut reversed = 0; // Переменная для хранения перевернутого числа
    let mut num = num; // Копия исходного числа, чтобы не изменять оригинал
    while num > 0 { // Пока число больше нуля
        reversed = reversed * 10 + num % 10; // Добавляем последнюю цифру числа к перевернутому
        num = num / 10; // Удаляем последнюю цифру из числа
    }
    reversed // Возвращаем перевернутое число
}

fn main() {
    // Ввод количества чисел
    println!("Введите количество чисел:");
    let mut input = String::new(); // Создание пустой строки для чтения ввода
    io::stdin().read_line(&mut input).unwrap(); // Чтение строки из стандартного ввода
    let n: usize = input.trim().parse().unwrap(); // Преобразование строки в число и обработка ошибок

    // Ввод чисел
    let mut numbers = Vec::new(); // Создание пустого вектора для хранения чисел
    for _ in 0..n { // Цикл, который выполняется n раз
        println!("Введите число:");
        let mut input = String::new(); // Создание пустой строки для чтения ввода
        io::stdin().read_line(&mut input).unwrap(); // Чтение строки из стандартного ввода
        let num: i32 = input.trim().parse().unwrap(); // Преобразование строки в число и обработка ошибок
        numbers.push(num); // Добавление числа в вектор
    }

    // Переворачиваем числа и выводим без ведущих нулей
    for num in numbers { // Цикл по всем числам в векторе
        println!("{}", reverse_number(num)); // Вывод перевернутых чисел
    }
}