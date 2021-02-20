import { Testimonios } from '../models/Testimonios.js';

const guardarTestimonios = async (req , res) => {
    //Validar formulario
    const { nombre , email , mensaje} = req.body;

    const errores = [];

    if(nombre.trim() === ''){
        errores.push({mensaje: 'El Nombre esta vacio'});
    }
    if(email.trim() === ''){
        errores.push({mensaje: 'El Email esta vacio'});
    }
    if(mensaje.trim() === ''){
        errores.push({mensaje: 'El Mensaje esta vacio'});
    }

    if(errores.length > 0){
        //Consultar testimonios existe
        const testimonios = await Testimonios.findAll();

        //Mostrar vista con errores, primer parametro la vista y el segundo la informacion que deseamos enviar
        res.render('testimoniales', {
            pagina: 'Testimoniales',
            errores,
            nombre,
            email,
            mensaje,
            testimonios
        })
    }else{
        //Almacenar en la base de datos
        try {
            await Testimonios.create({
                nombre,
                email,
                mensaje
            });

            res.redirect('/testimoniales')
        } catch (error) {
            console.log(error);
        }
    }
}

const eliminarTestimonio = async (req , res) => {
    
    const  { id } = req.params;

    try {
        await Testimonios.destroy({ where:{ id }});
        
        res.redirect('/testimoniales');

    } catch (error) {
        console.log(error);
    }
}

export {
    guardarTestimonios,
    eliminarTestimonio
}