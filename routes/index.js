import express from 'express';
import { 
    paginaInicio , 
    paginaNosotros,
    paginaViajes, 
    paginaTestimonios, 
    paginaDetalleViaje ,
} from '../controllers/paginasController.js';
import { guardarTestimonios , eliminarTestimonio } from '../controllers/testimoniosController.js';

const router = express.Router();//De esta forma estoy utilizando la misma intancia de express, estamos extendiendo o utilizando su router

router.get('/', paginaInicio );


router.get('/nosotros', paginaNosotros);


router.get('/viajes', paginaViajes);
router.get('/viajes/:slug', paginaDetalleViaje); // crear con comodin /: es tipo una variable que carga en esa pagina


router.get('/testimoniales', paginaTestimonios);
router.post('/testimoniales',guardarTestimonios);
router.get('/testimoniales/:id',eliminarTestimonio);

export default router;