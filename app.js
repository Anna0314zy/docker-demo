const express = require('express');
const app = express();
const PORT = 3000;

// 定义一个简单的路由
app.get('/', (req, res) => {
  res.send('Hello from Express! 我是 Express dddd');
});

// 启动服务器
app.listen(PORT, () => {
  console.log(`Express server is running at http://localhost:${PORT}`);
});
