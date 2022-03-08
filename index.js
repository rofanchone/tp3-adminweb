const app = require('express')();
const dotenv = require('dotenv');
dotenv.config();

app.get('/', (req, res) => {
    res.send(`Hello World ! Ce conteneur (ID: ${process.env.HOSTNAME}) roule sur la machine: ${process.env.HOST_NAME} a l'adresse ${process.env.IPADDR}`)
});

const port = 80;

app.listen(port, () => {
    console.log(`Le serveur roule sur: http://${process.env.IPADDR}:${port}`)
})