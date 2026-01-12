import express from 'express';

const app = express();
const port = process.env.PORT || 3001;

app.get('/', (req, res) => {
  res.send('Hello World! I love Levs love daddy V7');
});

app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});
