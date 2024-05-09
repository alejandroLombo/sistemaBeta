import './App.css';

import { BrowserRouter, Route, Routes } from 'react-router-dom';
import Login from './pages/login';
import Admin from './pages/Admin'
import Ventas from './pages/Ventas'
import Administracion from './pages/Administracion'
import Reparto from './pages/Reparto'
import ComponenteMostrarSaldos from './pages/CuentasCorrientes/MostrarSaldos';
import ComponenteCrearSaldo from './pages/CuentasCorrientes/CrearSaldo';
import ComponenteCobrarSaldo from './pages/CuentasCorrientes/CobrarSaldo';
import ComponenteEditarSaldo from './pages/CuentasCorrientes/EditarSaldo'
import CrearUsuario from './pages/usuarios/createUsers'
import EditarUsuario from './pages/usuarios/editUser'
import MostrarUsuarios from './pages/usuarios/mostrarUsuarios'
import { useEffect, useState } from 'react';
import ComponenteMostrarPagos from './pages/CuentasCorrientes/pagos/MostrarPagos';
import ComponenteMostrarSaldosAnulados from './pages/CuentasCorrientes/MostrarSaldosAnulados';
import ComponenteMostrarSaldosEnZero from './pages/CuentasCorrientes/MostrarSaldosEnZero';
import ComponenteMostrarSaldosUsuarios from './pages/CuentasCorrientes/MostrarSaldosUsuarios';
import {useAuth } from './componentes/AuthContext';
import Header from './componentes/layout/Header';
function App() {
  const { isLoggedIn } = useAuth();
  const  [users, setLogueado] = useState('');
  
  console.log('Estado de autenticación:', isLoggedIn);
  useEffect(() => {
    // Lógica para comprobar si el usuario está logueado
    const userString = localStorage.getItem('usuario');
    const user = userString ? JSON.parse(userString) : null;
    
    if (user) {
      setLogueado(true);
      
    }
    
    // Podrías usar localStorage, sessionStorage, cookies o una llamada a una API para hacer esta comprobación
    //const userLoggedIn = /* Lógica para comprobar si el usuario está logueado */ true;
  }, []);
  
  console.log(users)


    return (

      <div className="App">
        <BrowserRouter>
        
         {isLoggedIn  && <Header></Header>} 
          <Routes>
            <Route path='/' element={<Login />} />
            <Route path='/login' element={<Login />} />
            {/* Resto de las rutas */}
            <Route path='/saldos' element={<ComponenteMostrarSaldos />} />
            <Route path='/saldosCobrados' element={<ComponenteMostrarSaldosEnZero />} />
            <Route path='/anulados' element={<ComponenteMostrarSaldosAnulados />} />
            <Route path='/saldosUsarios' element={<ComponenteMostrarSaldosUsuarios />} />
            <Route path='/nuevo' element={<ComponenteCrearSaldo />} />
            <Route path='/cobrar/:id' element={<ComponenteCobrarSaldo />} />
            <Route path='/editar/:id' element={<ComponenteEditarSaldo />} />
            <Route path='/Admin' element={<Admin />} />
            <Route path='/Administracion' element={<Administracion />} />
            <Route path='/Reparto' element={<Reparto />} />
            <Route path='/Ventas' element={<Ventas />} />
            <Route path='/usuarios' element={<MostrarUsuarios />} />
            <Route path='/editarUsuario/:id' element={<EditarUsuario />} />
            <Route path='/crearUsuario' element={<CrearUsuario />} />
            <Route path='/pagos/:id' element={<ComponenteMostrarPagos />} />


          </Routes>
        </BrowserRouter>
      </div>
    );
}

export default App;
