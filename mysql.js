const mysql = require('mysql');
const express = require('express');
const app = express();
const path = require("path")


const conection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'vivacolombia'
});


conection.connect((err) => {
    if (err) throw err;
    console.log('CONEXION EXITOSA');
})

let port = 3000;

app.listen(port, () => {
    console.log(`servidor creado http://localhost:$port`)
});


app.use(express.static(path.join(__dirname, 'views')))


app.get("/consultarVueloByCedula", function(req, res) {


    const vuelo = `SELECT * FROM vuelos WHERE Cedula = ${req.query.cedula};`;
    conection.query(vuelo, (err, lista) => {
        if (err) {
            throw err;
        } else {
            console.log(lista);
            res.send(lista);
        }
    });


});