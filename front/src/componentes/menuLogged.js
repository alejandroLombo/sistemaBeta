import Header from "./layout/Header";
function MenuLogged() {

    return <Header />;
}

export default MenuLogged;




/* import { useAuth } from '../componentes/AuthContext';
import Header from "./layout/Header";

function MenuLogged() {
    const { isLoggedIn } = useAuth();

    return isLoggedIn ? <Header /> : null;
}

export default MenuLogged;
 */