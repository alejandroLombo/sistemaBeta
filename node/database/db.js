import { Sequelize } from 'sequelize'

const db = new Sequelize('svaweb','admin', 'admin2709', {
    host: "localhost",
    port:3306,
    dialect: 'mysql'
})

export default db