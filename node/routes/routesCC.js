import express from 'express'
import { createCuenta, deleteCuenta, 
    getAllCuentas, getCuenta, updateCuenta } from 
    '../controllers/Cc_SvaController.js'

    
const router = express.Router()



router.get('/', getAllCuentas)
router.get('/:id', getCuenta)
router.post('/crear', createCuenta)
router.put('/:id', updateCuenta)
router.delete('/:id', deleteCuenta)


export default router