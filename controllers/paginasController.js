import { Viaje } from '../models/Viaje.js';
import { Testimonios } from '../models/Testimonios.js';


const paginaInicio = async (req , res) => { //req - lo que enviamos, osea la peticion que hacemos y res - lo que express nos responde
    
    //Consultar 3 viajes del modelo viaje
    //Hacer esto cuando tengo consultas multiples a la base de datos, consulta la base de forma conjunta y no por separado
    const promiseDB = [];

    promiseDB.push(Viaje.findAll({limit: 3}));
    promiseDB.push(Testimonios.findAll({limit: 3}));

    try {
        const resultado = await Promise.all(promiseDB);

        res.render('inicio', {
            pagina: 'Inicio',
            titulo: 'Próximos Viajes',
            clase: 'home', //Esta clase existe en la hoja de estilo
            viajes: resultado[0],
            testimonios: resultado[1]
        });
    } catch (error) {
        console.log(error);
    }
    
}

const paginaNosotros = (req , res) => {
    res.render('nosotros',{
        pagina: 'Nosotros'
    });
}

const paginaViajes = async (req , res) => {

    //Consultar base de datos
    const viajes = await Viaje.findAll();

    console.log(viajes);

    res.render('viajes',{
        pagina: 'Próximos Viajes',
        viajes,
    });
}

//Muestra un viaje por su slug
const paginaDetalleViaje = async (req , res) => {

    //Consultar base de datos
    const { slug } = req.params;

    try {
        const viaje = await Viaje.findOne({ where : { slug } } ); // es decir que el where pregunta si el slug es igual al viaje

        res.render('viaje',{
            pagina: 'Información Viaje',
            viaje
        })
    } catch (error) {
        console.log(error);        
    }

    res.render('viajes',{
        pagina: 'Próximos Viajes',
        viajes,
    });
}


const paginaTestimonios = async (req , res) => {
    try {
        const testimonios = await Testimonios.findAll();

        res.render('testimoniales',{
            pagina: 'Testimoniales',
            testimonios
        });
    } catch (error) {
        console.log(error);
    }
}

export {
    paginaInicio,
    paginaNosotros,
    paginaViajes,
    paginaDetalleViaje,
    paginaTestimonios
}