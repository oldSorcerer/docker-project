const http = require('http');

// Создаем HTTP-сервер
const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end('Hello from Node.js!');
});

// Слушаем порт 3000
server.listen(3000, '0.0.0.0', () => {
  console.log('Server running on port 3000');
});