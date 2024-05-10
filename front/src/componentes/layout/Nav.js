import React from "react";
import { NavLink } from "react-router-dom";
import { useAuth } from '../AuthContext';
import '../../styles/components/layout/Nav.css';

const Logout = () => {
    const { logout } = useAuth(); // Mueve la llamada a useAuth aquí dentro si es necesario

    const handleLogout = () => {
        // Elimina el elemento del localStorage
        localStorage.removeItem('usuario');
        // Llama a la función de logout del contexto de autenticación
        logout();
    };

    return (
        <NavLink className={({ isActive }) => (isActive ? "active" : null)} to="/login" onClick={handleLogout}>
            Salir
        </NavLink>
    );
}

const NavBar = () => {
    const userString = localStorage.getItem('usuario');
    const user = userString ? JSON.parse(userString) : null;

    return (
        <>
            {user && (
                <nav className="menu">
                    {user.id_cargo === 1 && (
                        <>
                            <NavLink className={({ isActive }) => (isActive ? "active" : null)} to="/admin">Home</NavLink>
                            <NavLink className={({ isActive }) => (isActive ? "active" : null)} to="/saldos">Cuentas Corrientes</NavLink>
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
                    <Logout /> {/* Renderiza el componente Logout en lugar de incluir la lógica directamente aquí */}
                </nav>
            )}
        </>
    );
}

export default NavBar;
