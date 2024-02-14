import Cc_SvaModel from "../models/Cc_SvaModel.js";
import Sequelize from 'sequelize';
//import { Op } from 'sequelize';
import { ClientesModel } from "../models/ClientesModel.js";


Cc_SvaModel.belongsTo(ClientesModel, { foreignKey: 'codcliente', targetKey: 'id' });
export const getAllCuentas = async (req, res) => {
    try {
        // Convierte el valor de 'anulado' y 'saldo' a números enteros
        const anuladoValue = parseInt(req.query.anulado);
        const saldoValue = parseInt(req.query.saldo);
        const cobrador = parseInt(req.query.cobrador);

        // Construye la cláusula where basada en el valor de 'anulado' y 'saldo'
        const whereClause = {
            anulado: anuladoValue === 0 ? 0 : 1 // Filtrar por anulado igual a 0 o 1 según el valor de anuladoValue
        };

        // Agrega una condición adicional para el saldo si anuladoValue es 0 y saldoValue es mayor que 0
        if (anuladoValue === 0 && saldoValue === 1) {
            whereClause.saldo = {
                [Sequelize.Op.gt]: 0, // Filtrar por saldo mayor que 0
                
            };
        }
        if (anuladoValue === 0 && saldoValue === 0) {
            whereClause.saldo = 0
        }
        // Realiza la consulta con la cláusula where opcional
        const cuentas = await Cc_SvaModel.findAll({
            include: [
                {
                    model: ClientesModel,
                    attributes: ['nombre']
                },
            ],
            where: whereClause // Aplica la cláusula where opcional
        });
        
        res.json(cuentas);
    } catch (error) {
        res.status(500).json({ message: error.message });
    }
}



export const getCuenta = async (req, res) => {
    try {
        const cuenta = await Cc_SvaModel.findAll({
            where: {id: req.params.id},
            include:[
                {
                    model : ClientesModel ,
                    attributes : ['nombre']
                },
            ],
        })
        res.json(cuenta[0])
    } catch (error) {
        res.json({message: error.message})
    }
}

export const createCuenta = async (req, res) => {
    console.log(req.body)
    try {
        await Cc_SvaModel.create(req.body)
        res.json({"message": "!Registro creado correctamente"})
    } catch (error) {
        res.json({message: error.message})
    }
}

export const updateCuenta = async (req, res) =>{
    try {
        await Cc_SvaModel.update (req.body, 
            {where: {id: req.params.id}})
        res.json({"message": "!Registro actualizado correctamente"})
    } catch (error) {
        res.json({message: error.message}) 
    }
}

export const deleteCuenta = async (req, res) =>{
    try {
        await Cc_SvaModel.destroy ({
            where: {id: req.params.id}})
            res.json({"message":"!Registro eliminado correctamente"})
    } catch (error) {
        res.json({message: error.message})
    }
}

