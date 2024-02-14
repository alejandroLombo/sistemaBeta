import db from "../database/db.js";
import { DataTypes } from "sequelize";

const PagosModel = db.define('cc_pagos', {
    id_cc: { type: DataTypes.INTEGER },
    idCliente: { type: DataTypes.INTEGER },
    fecha: { type: DataTypes.DATE},
    efectivo: { type: DataTypes.FLOAT },
    transferencia: { type: DataTypes.FLOAT },
    cobrador: { type: DataTypes.STRING }

},{freezeTableName: true})

export default PagosModel;