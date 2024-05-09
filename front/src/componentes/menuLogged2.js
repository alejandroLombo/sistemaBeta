import Header from "./layout/Header";



function MenuLogged() {
    const userString = localStorage.getItem('usuario');
    const user = userString ? JSON.parse(userString) : null;

    return user ? <Header /> : ('');
}

export default MenuLogged;
