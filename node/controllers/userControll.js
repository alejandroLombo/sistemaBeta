import UserModel from '../models/UserModel.js'

//** Mostrar un  Registro */

export const getUser = async (req, res) => {
    console.log(req.body);
    
    const { usuario, password } = req.body;
    try {
        const User = await UserModel.findOne({
            where: {
                usuario: usuario,
                password: password
            }
        });
        if (User) {
            res.json(User);
        } else {
            res.status(404).json({ message: "Usuario no encontrado" });

        }
    } catch (error) {
        res.json({ message: error.message })
    }
}