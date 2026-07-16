const express = require('express');
const app = express();
const PORT = 3000;

app.get('/', (req, res) => {
    res.send('🛡️ DevSecOps Secure Container is Running Flawlessly!');
});

app.listen(PORT, () => {
    console.log(`Secure Server active on port ${PORT}`);
});
