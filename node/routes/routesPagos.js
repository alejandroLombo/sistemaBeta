import  express  from "express";
import { getAllPagos, getPago, crearPago, updatePago, deletePago}  from "../controllers/PagosController.js";


const router = express.Router()



router.get('/', getAllPagos);
router.get('/:id',getPago);
router.post('/crear',crearPago);
router.put('/:id',updatePago);
router.delete('/:id',deletePago);



export default router