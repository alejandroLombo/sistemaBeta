import express from 'express'
import { getAllClientes, getCliente, createCliente, updateCliente, deleteCliente } from '../controllers/Clientes_Controller.js'
const router = express.Router()

router.get('/',getAllClientes);
router.get('/:id',getCliente);
router.post('/',createCliente);
router.put('/:id',updateCliente);
router.delete('/:id',deleteCliente);


export default router