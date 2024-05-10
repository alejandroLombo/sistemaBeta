import './App.css';

import ComponenteMostrarSaldos from './pages/MostrarSaldos';
import { BrowserRouter, Route, Routes } from 'react-router-dom';
import { ComponenteCrearSaldo } from './pages/CrearSaldo';
import { ComponenteCobrarSaldo } from './pages/CobrarSaldo';
import Login from './pages/login';
import { Admin } from './pages/Admin'
import { Administracion } from './pages/Administracion'
import { Reparto } from './pages/Reparto'
import { Ventas } from './pages/Ventas'
import { CrearUsuario } from './pages/usuarios/createUsers'
import { EditarUsuario } from './pages/usuarios/editUser.js'
import { MostrarUsuarios } from './pages/usuarios/mostrarUsuarios'
import MenuLogged from './componentes/menuLogged';
import {useEffect, useState } from 'react';



function App() {

  const [user, setUser] = useState('');

  useEffect(() => {
    const storedUser = localStorage.getItem('usuario');
    if (storedUser) {
      setUser(storedUser);
    }
  }, []);

  return (
    <div className="App">
      <BrowserRouter>
      <MenuLogged storeUser={'usuario'} />
        <Routes>
          <Route index element={<Login></Login>}></Route>
          <Route path='/login' element={<Login></Login>}></Route>



          <Route path='/saldos' element={<ComponenteMostrarSaldos></ComponenteMostrarSaldos>} />
          <Route path='/nuevo' element={<ComponenteCrearSaldo></ComponenteCrearSaldo>} />
          {/* <Route path='/editar/:id' element={<ComponenteEditarSaldo></ComponenteEditarSaldo>}/> */}
          <Route path='/cobrar/:id' element={<ComponenteCobrarSaldo></ComponenteCobrarSaldo>} />

          <Route path='/Admin' element={<Admin />} />
          <Route path='/Administracion' element={<Administracion />} />
          <Route path='/Reparto' element={<Reparto />} />
          <Route path='/Ventas' element={<Ventas />} />

          {/* Rutas de usuarios */}
          <Route path='/usuarios' element={<MostrarUsuarios />} />
          <Route path='/editarUsuario/:id' element={<EditarUsuario />} />
          <Route path='/crearUsuario' element={<CrearUsuario />} />


        </Routes>
      </BrowserRouter>
    </div>
  );

}

export default App;

