// Импортируем модуль readline для чтения данных из потока ввода
const readline = require('readline');

// Создаем интерфейс readline для чтения данных из стандартного ввода и вывода в стандартный вывод
const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

// Функция для асинхронного ввода строки с помощью readline
function inputString() {
  // Возвращаем Promise, который будет разрешен с введенной строкой
  return new Promise((resolve) => {
    // Задаем вопрос пользователю и ожидаем ответ
    rl.question('Введите строку: ', (answer) => {
      // Разрешаем Promise с ответом пользователя
      resolve(answer);
    });
  });
}

// Функция для вывода результата в консоль
function outputResult(vowelCount, consonantCount, result) {
  // Выводим результат в форматированном виде
  console.log(`Количество гласных: ${vowelCount}, количество согласных: ${consonantCount}, результат: ${result}`);
}

// Функция для подсчета количества гласных и согласных букв в строке
function countVowelsAndConsonants(s) {
  // Массив гласных букв
  let vowels = ['a', 'e', 'i', 'o', 'u', 'y', 'A', 'E', 'I', 'O', 'U', 'Y'];
  // Счетчик гласных букв
  let vowelCount = 0;
  // Счетчик согласных букв
  let consonantCount = 0;

  // Проходим по каждому символу в строке
  for (let i = 0; i < s.length; i++) {
    // Если символ является гласной буквой
    if (vowels.includes(s[i])) {
      // Увеличиваем счетчик гласных букв
      vowelCount++;
    } else {
      // Увеличиваем счетчик согласных букв
      consonantCount++;
    }
  }

  // Возвращаем количество гласных, согласных и результат сравнения
  return {
    vowelCount: vowelCount,
    consonantCount: consonantCount,
    result: vowelCount > consonantCount ? "Да" : (vowelCount < consonantCount ? "Нет" : "Одинаково")
  };
}

// Вызываем функцию ввода строки и обрабатываем результат
inputString().then((s) => {
  // Подсчитываем количество гласных и согласных букв в строке
  let counts = countVowelsAndConsonants(s);
  // Выводим результат
  outputResult(counts.vowelCount, counts.consonantCount, counts.result);
  // Закрываем readline после использования
  rl.close();
});