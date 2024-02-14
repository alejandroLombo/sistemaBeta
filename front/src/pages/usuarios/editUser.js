
import axios from "axios";
import { useState, useEffect } from "react";
import { useNavigate, useParams, Link } from "react-router-dom";
const URI = 'http://localhost:8000/usuarios/';

const EditarUsuario = () => {
    const [nombre, setNombre] = useState('');
    const [usuario, setUsuario] = useState('');
    const [password, setPassword] = useState('');
    const [id_cargo, setId_cargo] = useState([]);
    const [codsistema, setCodsistema] = useState([]);
    const [zona, setZona] = useState([]);
    const navigate = useNavigate();
    const { id } = useParams();

    console.log();

    const Update = async (e) => {
        e.preventDefault();
        await axios.put(URI + id, {
            nombre: nombre,
            usuario: usuario,
            password: password,
            id_cargo: id_cargo,
            codsistema: codsistema,
            zona: zona
        })
        navigate('/usuarios')
    }
    useEffect(() => {
        getUser()
    }, [])

    const getUser = async () => {
        const res = await axios.get(URI + id)
        setNombre(res.data.nombre)
        setUsuario(res.data.usuario)
        setPassword(res.data.password)
        setId_cargo(res.data.id_cargo)
        setCodsistema(res.data.codsistema)
        setZona(res.data.zona)
    }

    return (
        <div className="container">
            <div className="row">
                <h3>Crear Usuarios</h3>
                <div className="col-sm-12 col-md-2 col-lg-2 col-lx-2 border-right border-dark">
                    <Link to="/usuarios" className='btn btn-primary mt-2 mb-2'>Volver</Link>
                </div>
                <div className="col-sm-12 col-md-4 col-lg-4 col-lx-4">

                    <div className="mb-3">

                        <form onSubmit={Update}>
                            <label className="form-label">Nombre</label>
                            <input value={nombre} className="form-control" type="text" onChange={(e) => setNombre(e.target.value)} />
                            <label className="form-label">Usuario</label>
                            <input value={usuario} className="form-control" type="text" onChange={(e) => setUsuario(e.target.value)} />
                            <label className="form-label">Password</label>
                            <input value={password} className="form-control" type="password" onChange={(e) => setPassword(e.target.value)} />
                            <label className="form-label">Id_Cargo</label>
                            <input value={id_cargo} className="form-control" type="text" onChange={(e) => setId_cargo(e.target.value)} />
                            <label className="form-label">Cod Sistema</label>
                            <input value={codsistema} className="form-control" type="text" onChange={(e) => setCodsistema(e.target.value)} />
                            <label className="form-label">Zona</label>
                            <input value={zona} className="form-control" type="text" onChange={(e) => setZona(e.target.value)} />
                            <button type="submit" className="btn btn-success mt-2">Editar Usuario</button>


                        </form>
                    </div>
                </div>
            </div>
        </div>
    )


}

export default EditarUsuario 