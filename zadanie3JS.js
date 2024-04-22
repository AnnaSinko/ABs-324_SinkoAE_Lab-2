// Функция для переворачивания числа
function reverseNumber(num) {
    return parseInt(num.toString().split('').reverse().join(''));
}

// Ввод количества чисел
let n = parseInt(prompt("Введите количество чисел:"));
let numbers = [];

// Ввод чисел
for(let i = 0; i < n; i++) {
    numbers.push(parseInt(prompt("Введите число: ")));
}

// Переворачиваем числа и выводим без ведущих нулей
for(let i = 0; i < n; i++) {
    console.log(reverseNumber(numbers[i]));
}