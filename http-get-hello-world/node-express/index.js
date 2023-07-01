const express = require('express');
const audit = require('express-requests-logger');
const app = express();
const port = 8080;

app.use(audit());

app.get('/', (_, res) => {
  res.send('hello world\n');
});

app.listen(port, () => {
  console.log(`Listening on port ${port}`);
});
