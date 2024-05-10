import express, { Router } from 'express'
import cors from 'cors'
import db from './database/db.js'
import routesCC from './routes/routesCC.js'
import routesPagos from './routes/routesPagos.js'
import routerClientes from './routes/routesClientes.js'
import path from 'path'
import cookieParser from 'cookie-parser'
import logger from 'morgan'
import session from 'express-session'
import { fileURLToPath } from 'url';
import contacto from './routes/admin/contacto.js'
import usersRoutes from './routes/usersRoutes.js'
import usuariosRoutes from "./routes/usuariosRoutes.js"

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'hbs');

//session
app.use(session({
  secret: 'klashjdfgqwur',
  resave: true,
  saveUninitialized: true,
}));


app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, '/front/build')));
app.get("/",(req,res)=>{
  res.sendFile(path.join(__dirname, "/front/build", index.html))
})
app.use(cors())

/* app.use('/', loginRouter); */
app.use('/usuarios', usersRoutes)
app.use('/cuentas/', routesCC)
app.use('/pagos/', routesPagos)
app.use('/clientes/', routerClientes)
app.use('/contacto', contacto)
app.use('/usuarios',usuariosRoutes)

try {
  await db.authenticate()
  console.log('Conexion exitosa a la DB');
} catch (error) {
  console.log(`El error de conexion es: ${error}`);
}

app.listen(8000, () => {
  console.log("Servidor corriendo en http://localhost:8000")
});

// error handler
app.use(function (err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

export default app;
