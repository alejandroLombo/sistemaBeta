import PagosModel from "../models/PagosModel.js";
import { ClientesModel } from "../models/ClientesModel.js";

PagosModel.belongsTo(ClientesModel, { foreignKey: 'idCliente', targetKey: 'id' });

export const getAllPagos = async (req, res) => {
    try {
        const pagos = await PagosModel.findAll({
            include:[
                {
                    model : ClientesModel ,
                    attributes : ['nombre']
                },
            ],
        })
        res.json(pagos)
    } catch (error) {
        res.json({message: error.message})
        
    }
}

export const getPago = async(req,res)=>{
    try {
       const User= await PagosModel.findAll({
        where:{
            id_cc:req.params.id
        },include:[
            {
                model : ClientesModel ,
                attributes : ['nombre']
            },
        ],
       });
       res.json(User);
    } catch (error) {
        res.json({message: error.message})
    }
}

//**Crear un Pago */
export const crearPago = async(req,res)=>{
    console.log(req.body)
    try {
       await PagosModel.create(req.body);
       res.json({
        "message":"Registro Creado Correctamente"
       });
    } catch (error) {
        res.json({message: error.message})
    }
}

//** Actualizar un Registro */
export const updatePago = async(req,res)=>{
    try {
       await PagosModel.update(req.body,{
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
export const deletePago = async(req,res)=>{
    try {
       const User= await PagosModel.destroy({
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