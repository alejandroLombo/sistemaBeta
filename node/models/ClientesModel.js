import { DataTypes } from "sequelize";
import db from "../database/db.js";

export const ClientesModel = db.define('clientes', {
    id: { type: DataTypes.NUMBER, primaryKey: true },
    nombre: { type: DataTypes.CHAR },
    Direccion: { type: DataTypes.CHAR },
    telefono: { type: DataTypes.CHAR },
    localidad: { type: DataTypes.CHAR },
    provincia: { type: DataTypes.CHAR },
    cuit: { type: DataTypes.CHAR },
    clihorario: { type: DataTypes.CHAR },
    clihab: { type: DataTypes.BOOLEAN }
}, { freezeTableName: true });

