import axios from "axios"
import { useEffect, useState } from "react"
import { Navigate } from 'react-router-dom';


const URI= 'http://localhost:8000/usuarios/'



export default function Login() {


    const [pass, setPass] = useState('')
    const [user, setUser] = useState('')
    const [error, setError] = useState(null);
    const [ usuario, setUsuario ] = useState([]);
    const [redirectPath, setRedirectPath] = useState(null);



    const getUser = async (e) => {
        e.preventDefault()
        setError(null); // Limpiar el error antes de hacer la solicitud
        try{
            
            //console.log(user, pass);
            const res = await axios.post(URI,{
                usuario: user,
                password: pass
            })
            setUsuario(res.data)
            
        } catch(error){
            console.error('Error al obtener el usuario:', error);
            setError("Contraseña incorrecta. Por favor, inténtalo de nuevo."); // Mostrar un mensaje de error
            
        }
        
    }
    
    
    useEffect(() => {
        localStorage.removeItem('usuario');

        // Verificar si el usuario tiene un id_cargo y establecer la ruta de redirección según eso
        if (usuario.id_cargo === 1) {
            localStorage.setItem('usuario', JSON.stringify(usuario));
            setRedirectPath("/Admin");
        } else if (usuario.id_cargo === 2) {
            localStorage.setItem('usuario', JSON.stringify(usuario));
            setRedirectPath("/Reparto");
        } else if (usuario.id_cargo === 3) {
            localStorage.setItem('usuario', JSON.stringify(usuario));
            setRedirectPath("/Administracion");
        } else if (usuario.id_cargo === 4) {
            localStorage.setItem('usuario', JSON.stringify(usuario));
            setRedirectPath("/Ventas");
        }
    }, [usuario]);

    // Si hay una ruta de redirección, renderizar Navigate con esa ruta
    if (redirectPath) {
        return <Navigate to={redirectPath} />;
    }

    
    
    
    return (
        

        <div className="container">
            <h2>Logueate para Ingresar</h2>

            <form onSubmit={getUser}>

                <div>
                    <input className="input-control mt-4 mb-4" type="text" name="usuario" placeholder="Usuario" id="inputUser" onChange={(e) => setUser(e.target.value)} />
                </div>
                <div>
                    <input className="input-control mt-4 mb-4" type="password" name="password" placeholder="Contraseña" id="inputPasssword" onChange={(e) => setPass(e.target.value)} />
                </div>

                <input type="submit" className="btn btn-primary mt-2"  value="Ingresar"/>
                {error && <div className="error">{error}</div>} {/* Mostrar el mensaje de error si existe */}


            </form>
        </div>
        

    )
}