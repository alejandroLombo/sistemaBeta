import UserModel from "../models/UserModel.js";


 //**metodos crud */

//** Mostrar todos Registros */

    export const getAllUser = async(req,res)=>{
        try {
           const Users= await UserModel.findAll();
           res.json(Users);
        } catch (error) {
            res.json({message: error.message})
        }
    }

//** Mostrar un  Registro */
export const getUser = async(req,res)=>{
    try {
       const User= await UserModel.findAll({
        where:{
            id:req.params.id
        }
       });
       res.json(User[0]);
    } catch (error) {
        res.json({message: error.message})
    }
}

//** Crear un Registro */

export const createUser = async(req,res)=>{
    try {
       await UserModel.create(req.body);
       res.json({
        "message":"Registro Creado Correctamente"
       });
    } catch (error) {
        res.json({message: error.message})
    }
}

//** Actualizar un Registro */
export const updateUser = async(req,res)=>{
    try {
       await UserModel.update(req.body,{
        where:{id: req.params.id}
       });
       res.json({
        "message":"Registro Actualizado Correctamente"
       });
    } catch (error) {
        res.json({message: error.message})
    }
}
//** Eliminar un Registro */
export const deleteUser = async(req,res)=>{
    try {
       const User= await UserModel.destroy({
        where:{
            id:req.params.id
        }
       });
       res.json({
        "message":"Registro Eliminado Correctamente"
       });
    } catch (error) {
        res.json({message: error.message})
    }
}