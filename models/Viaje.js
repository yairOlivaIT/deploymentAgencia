import Sequelize from 'sequelize';
import db from '../config/db.js';

export const Viaje = db.define('viajes', { //viajes es porque la tabla se llama asi en mysql
    titulo: {
        type: Sequelize.STRING
    },
    precio: {
        type: Sequelize.STRING
    },
    fecha_ida: {
        type: Sequelize.DATE
    },
    fecha_vuelta: {
        type: Sequelize.DATE
    },
    imagen: {
        type: Sequelize.STRING
    },
    descripcion: {
        type: Sequelize.STRING
    },
    disponibles: {
        type: Sequelize.STRING
    },
    slug:{
        type: Sequelize.STRING
    }
     
});