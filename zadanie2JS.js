// Функция, которая принимает число и возвращает true, если количество цифр в числе нечетное
function hasOddDigits(num) {
    return num.toString().length % 2 !== 0;
}

// Чтение количества чисел с клавиатуры
const readline = require('readline').createInterface({
  input: process.stdin,
  output: process.stdout
});

readline.question('Введите количество элементов: ', n => {
  n = parseInt(n);
  let count = 0; // Инициализируем счётчик

  // Функция для чтения чисел
  const readNumber = () => {
    readline.question('Введите числа: ', num => {
      if (hasOddDigits(parseInt(num))) {
        count++; // Увеличиваем счётчик, если количество цифр в числе нечетное
      }
      n--; // Уменьшаем количество оставшихся чисел
      if (n > 0) { // Если ещё не прочитали все числа
        readNumber(); // Читаем следующее число
      } else { // Если прочитали все числа
        console.log(count); // Выводим количество чисел с нечетным количеством цифр
        readline.close(); // Закрываем интерфейс ввода-вывода
      }
    });
  };

  readNumber(); // Начинаем чтение чисел
});