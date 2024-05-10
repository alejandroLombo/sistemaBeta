import { Sequelize } from 'sequelize'

const db = new Sequelize('svaweb','root', 'Milo2603!', {
    host: "localhost",
    dialect: 'mysql'
})

export default db