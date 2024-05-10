import { Sequelize } from 'sequelize'

const db = new Sequelize('svaweb','root', 'milo.2603', {
    host: "localhost",
    port:3306,
    dialect: 'mysql'
})

export default db