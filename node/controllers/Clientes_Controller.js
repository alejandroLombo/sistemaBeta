import { ClientesModel } from "../models/ClientesModel.js";


/* export const getClientes = async (req, res) =>{
    try {
        const clientes = await ClientesModel.findAll({
            attributes: ['id', 'nombre'],
            order: [['nombre', 'ASC']]
        });
        res.json(clientes)
    } catch (error) {
        res.json({message: error.message})
        
    }
}

export const getCliente = async (req, res) => {
    try {
        const cuenta = await ClientesModel.findAll({
            where: {id: req.params.id}
        })
        res.json(clientes[0])
    } catch (error) {
        res.json({message: error.message})
    }
} */


//** Mostrar todos Registros */

export const getAllClientes = async(req,res)=>{
    try {
       const TotalCli= await ClientesModel.findAll();
       res.json(TotalCli);
    } catch (error) {
        res.json({message: error.message})
    }
}

//** Mostrar un  Registro */
export const getCliente = async(req,res)=>{
try {
   const Cliente= await ClientesModel.findAll({
    where:{
        id:req.params.id
    }
   });
   res.json(Cc[0]);
} catch (error) {
    res.json({message: error.message})
}
}

//** Crear un Registro */

export const createCliente = async(req,res)=>{
try {
   await ClientesModel.create(req.body);
   res.json({
    "message":"Registro Creado Correctamente"
   });
} catch (error) {
    res.json({message: error.message})
}
}

//** Actualizar un Registro */
export const updateCliente = async(req,res)=>{
try {
   await ClientesModel.update(req.body,{
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
export const deleteCliente = async(req,res)=>{
try {
   const DeleteCliente= await ClientesModel.destroy({
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