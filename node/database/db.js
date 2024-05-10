import { Sequelize } from 'sequelize'

const db = new Sequelize('svaweb','root', 'Milo2603!', {
    host: "http://93.127.212.217/",
    dialect: 'mysql'
})

export default db