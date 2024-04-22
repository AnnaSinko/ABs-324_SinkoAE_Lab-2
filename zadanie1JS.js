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
function outputResult(result) {
  // Выводим результат в консоль
  console.log(result);
}

// Функция для подсчета количества гласных и согласных букв в строке
function countVowelsAndConsonants(s) {
  // Объект для хранения гласных букв
  let vowels = {
    'a': true, 'e': true, 'i': true, 'o': true, 'u': true, 'y': true, 
    'A': true, 'E': true, 'I': true, 'O': true, 'U': true, 'Y': true
  };
  // Счетчик гласных букв
  let vowelCount = 0;
  // Счетчик согласных букв
  let consonantCount = 0;

  // Проходим по каждому символу в строке
  for (let i = 0; i < s.length; i++) {
    // Проверяем, является ли символ буквой
    if (s[i].match(/[a-z]/i)) {
      // Если символ является гласной буквой
      if (vowels[s[i]]) {
        // Увеличиваем счетчик гласных букв
        vowelCount++;
      } else {
        // Увеличиваем счетчик согласных букв
        consonantCount++;
      }
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

// Вызываем функцию ввода строки и обрабатываем результат
inputString().then((s) => {
  // Подсчитываем количество гласных и согласных букв в строке
  let result = countVowelsAndConsonants(s);
  // Выводим результат
  outputResult(result);
  // Закрываем readline после использования
  rl.close();
});