import { Sequelize } from 'sequelize'

const db = new Sequelize('svaweb','root', 'Putamadre2!', {
    host: "localhost",
    dialect: 'mysql'
})

export default db