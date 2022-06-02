const express = require('express');
const app = express();

const port = 8080;

app.get('/', (req, res) => {
    res.send('Nodejs Docker Demo');
});

app.listen(port, () => {
    console.log(`app running on ${port}`)
});
