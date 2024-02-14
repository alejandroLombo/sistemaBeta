import  express  from "express";
import {getAllUser,getUser,createUser,updateUser,deleteUser} from "../controllers/UsuariosControllers.js";
const router = express.Router();

router.get('/',getAllUser);
router.get('/:id',getUser);
router.post('/crear',createUser);
router.put('/:id',updateUser);
router.delete('/:id',deleteUser);

export default router;
