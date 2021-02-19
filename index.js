// const express = require('express');
import express from 'express';
import router from './routes/index.js';
import db from './config/db.js';
import moment from 'moment';
import dotenv from 'dotenv';

dotenv.config({path:"variables.env"});

const app = express();
app.locals.moment = moment;


//Conectar la base de datos
db.authenticate()
    .then(() => console.log('base de datos conectada'))
    .catch(error => console.log(error));



//Habilitar pug - template engine
app.set('view engine', 'pug');



//Creando nuestro propio middleware- obtener el año actual
app.use( (req , res , next) => {
    const year = new Date();
    res.locals.actualYear = year.getFullYear();
    res.locals.nombreSitio = "Agencia de Viajes"
    next();
});

//Agregar body parse para leer los datos del formulario
app.use(express.urlencoded({extended: true}));

//Definir la carpeta publica
app.use(express.static('public'));

// Agregar router
app.use('/',router);

//puerto y host para la app
const host = process.env.HOST || '0.0.0.0';
//definir puerto
const port = process.env.PORT || 4000;


app.listen(port, host, () => {
    console.log(`El servidor esta funcionando`);
}); 