import axios from 'axios'
import '../../styles/components/botones/button.css'
import { useState, useEffect } from 'react'
import { Link } from 'react-router-dom'

const URI = 'http://localhost:8000/cuentas/'

const ComponenteMostrarSaldos = () => {

    const userString = localStorage.getItem('usuario');
    const user = userString ? JSON.parse(userString) : null;


    const [saldos, setSaldos] = useState([])
    const [search, setSearch] = useState("")


    // obtengo todos los saldos
    const mostrarSaldos = async () => {
        const res = await axios.get(URI,{
            params: {
                anulado: '0',
                saldo: '1'
            }
        });
        setSaldos(res.data)
        //console.log(res.data);
    }
    const busqueda = (e)=>{
        setSearch(e.target.value)
        
    }
    
    let results=[]
    if (!search) {
        results=saldos
        
    } else {
        results = saldos.filter((datos)=>
        datos.cliente.nombre.toLowerCase().includes(search.toLocaleLowerCase())
    )
    }


    // llamo las a las funciones necesarias al cargar el componente
    useEffect(() => {
        mostrarSaldos()
    }, [])

    // vista
    return (
        <div className='container-asd'>
            <div className='row'>
                <h1>Cuentas Corrientes</h1>
                <div className="col-sm-12 col-md-2 col-lg-2 col-lx-2 border-right border-dark">
                    <Link to='/nuevo' className='btn btn-primary boton text'><i className="fa-solid fa-square-plus fa-xl"></i> Nuevo Cta Cte</Link>
                    {user.id_cargo ===1 &&(
                        <>
                        <Link to='/anulados' className='btn btn-primary boton text'><i className="fa-solid fa-box-archive"></i> Cta Cte Anuladas</Link>
                        <Link to='/saldosCobrados' className='btn btn-primary boton text'><i className="fa-solid fa-box-archive"></i> Cta Cte Cobradas</Link>
                        <Link to='/saldosUsarios' className='btn btn-primary boton text'><i className="fa-solid fa-box-archive"></i>Cobradas por Usuarios</Link>
                        </>
                    )}
                </div>
                <div className="col-sm-12 col-md-10 col-lg-10 col-lx-10">
                    <div className='mt-4'>
                    <input value={search} onChange={busqueda} placeholder="Buscar Cliente" className="form-control" type='text'/>
                    </div>
                    <div className='mt-4'>
                    <table className='table table-hover'>
                        <thead className='table-primary'>
                            <tr>
                                <th>#</th>
                                <th>Fecha</th>
                                <th>Cliente</th>
                                <th>Saldo</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            {results.map((saldo) => (
                                <tr key={saldo.id}>
                                    <td>{saldo.id}</td>
                                    <td>{saldo.fecha}</td>
                                    <td>{saldo.cliente.nombre}</td>
                                    <td>${saldo.saldo}</td>
                                    <td>
                                        {user.id_cargo === 1 && (<>
                                            <Link to={`/editar/${saldo.id}`} className='btn btn-info ml-1'><i className="fa-solid fa-pen-to-square ml-1"></i></Link>
                                            {/*   <button onClick={() => borrarSaldo(saldo.id)} className='btn btn-danger ml-1'><i class="fa-solid fa-trash"></i></button> */}
                                        </>)}
                                            <Link to={`/pagos/${saldo.id}`} className='btn btn-secondary ml-1'><i className="fa-solid fa-magnifying-glass"></i>Ver Pagos</Link>
                                        <Link to={`/cobrar/${saldo.id}`} className='btn btn-success ml-1'><i className="fa-solid fa-sack-dollar"></i> Cobrar</Link>
                                    </td>

                                </tr>
                            ))}

                        </tbody>

                    </table>
                    </div>
                </div>
            </div>

        </div>

    )


}

export default ComponenteMostrarSaldos