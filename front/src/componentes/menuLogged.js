import Header from "./layout/Header";

function MenuLogged() {
    const userString = localStorage.getItem('usuario');
    const user = userString ? JSON.parse(userString) : null;

    return user ? <Header /> : ('');
}

export default MenuLogged;


/* import React, { useEffect, useState } from "react";
import Header from "./layout/Header";

function MenuLogged() {
    const [user, setUser] = useState(null);

    useEffect(() => {
        const userString = localStorage.getItem('usuario');
        const parsedUser = userString ? JSON.parse(userString) : null;
        setUser(parsedUser);
    }, [user]); // Se vuelve a ejecutar cada vez que cambia el estado de 'user'

    return user ? <Header /> : <h2>Sin Usuario</h2>;
}

export default MenuLogged;
 */

/* import React from "react";
import Header from "./layout/Header";

function MenuLogged({ user, logout }) {
    return (
        <div>
            <Header user={user} logout={logout} />
        </div>
    );
}

export default MenuLogged;
 */
