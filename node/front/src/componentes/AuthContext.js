// AuthContext.js
import React, { createContext, useState, useContext } from 'react';

// Creamos un nuevo contexto de autenticación
const AuthContext = createContext();

// Este componente proveerá el contexto a sus componentes hijos
export const AuthProvider = ({ children }) => {
  const [isLoggedIn, setIsLoggedIn] = useState(false);

  // Función para iniciar sesión
  const login = () => {
    setIsLoggedIn(true);
  };

  // Función para cerrar sesión
  const logout = () => {
    setIsLoggedIn(false);
  };

  // Proporcionamos el contexto a los componentes hijos
  return (
    <AuthContext.Provider value={{ isLoggedIn, login, logout }}>
      {children}
    </AuthContext.Provider>
  );
};

// Hook personalizado para acceder al contexto de autenticación
export const useAuth = () => useContext(AuthContext);
