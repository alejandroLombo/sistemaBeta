import db from "../database/db.js";
import { DataTypes } from "sequelize";

const UserModel = db.define('usuarios', {
    nombre: { type: DataTypes.STRING },
    usuario: { type: DataTypes.STRING },
    password: { type: DataTypes.STRING },
    id_cargo: { type: DataTypes.NUMBER },
    codsistema: { type: DataTypes.NUMBER },
    zona: { type: DataTypes.NUMBER }

})

export default UserModel;