import React from "react";
import { NavLink, Navigate } from "react-router-dom";
import '../../styles/components/layout/Nav.css';



const Logout = () => {

   // Eliminar un elemento del localStorage
   localStorage.removeItem('usuario');
}



const NavBar = (props) => {
    
    const userString = localStorage.getItem('usuario');
    const user = userString ? JSON.parse(userString) : null
    

        
      
        return (
        <>
            {user && (
                <nav className="menu">
                    {user.id_cargo === 1 && (
                        <>
                            <NavLink className={({ isActive }) => (isActive ? "active" : null)} to="/admin">Home</NavLink>
                            <NavLink className={({ isActive }) => (isActive ? "active" : null)} to="/usuarios">Usuarios</NavLink>
                        </>
                    )}
                    {(user.id_cargo === 2 || user.id_cargo === 4) && (
                        <NavLink className={({ isActive }) => (isActive ? "active" : null)} to="/reparto" >Home</NavLink>
                    )}
                    {user.id_cargo === 3 && (
                        <>
                            <NavLink className={({ isActive }) => (isActive ? "active" : null)} to="/administracion">Home</NavLink>  
                            <NavLink className={({ isActive }) => (isActive ? "active" : null)} to="/usuarios">Usuarios</NavLink>
                        </>
                    )}
                    <NavLink className={({ isActive }) => (isActive ? "active" : null)} to="http://localhost:3000/login" onClick={Logout}>Salir</NavLink>
                </nav>
            )}
        </>
    );


}



export default NavBar