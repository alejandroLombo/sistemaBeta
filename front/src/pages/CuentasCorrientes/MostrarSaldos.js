import axios from 'axios'
import { useState, useEffect } from 'react'
import { Link } from 'react-router-dom'

const URI = 'http://localhost:8000/cuentas/'

const ComponenteMostrarSaldos = () => {

    const userString = localStorage.getItem('usuario');
    const user = userString ? JSON.parse(userString) : null;


    const [saldos, setSaldos] = useState([])

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
                    <Link to='/nuevo' className='btn btn-primary mt-2 mb-2'><i className="fa-solid fa-square-plus fa-xl"></i> Nuevo Cta Cte</Link>
                    {user.id_cargo ===1 &&(
                        <>
                        <Link to='/anulados' className='btn btn-primary mt-2 mb-2'><i className="fa-solid fa-box-archive"></i> Cta Cte Anuladas</Link>
                        <Link to='/saldosCobrados' className='btn btn-primary mt-2 mb-2'><i className="fa-solid fa-box-archive"></i> Cta Cte Cobradas</Link>
                        <Link to='/saldosUsarios' className='btn btn-primary mt-2 mb-2'><i className="fa-solid fa-box-archive"></i> Cta Cte Cobradas por Usuarios</Link>
                        </>
                    )}
                </div>
                <div className="col-sm-12 col-md-10 col-lg-10 col-lx-10">
                    <table className='table'>
                        <thead className='table-primary'>
                            <tr>
                                <th>#</th>
                                <th>Numero Remito</th>
                                <th>Fecha</th>
                                <th>Cliente</th>
                                <th>Total del Remito</th>
                                <th>Saldo</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            {saldos.map((saldo) => (
                                <tr key={saldo.id}>
                                    <td>{saldo.id}</td>
                                    <td>{saldo.num_rem}</td>
                                    <td>{saldo.fecha}</td>
                                    <td>{saldo.cliente.nombre}</td>
                                    <td>${saldo.total_rem}</td>
                                    <td>${saldo.saldo}</td>
                                    <td>
                                        {user.id_cargo === 1 && (<>
                                            <Link to={`/editar/${saldo.id}`} className='btn btn-info ml-1'><i className="fa-solid fa-pen-to-square ml-1"></i></Link>
                                            <Link to={`/pagos/${saldo.id}`} className='btn btn-secondary ml-1'><i className="fa-solid fa-magnifying-glass"></i>Ver Pagos</Link>
                                            {/*   <button onClick={() => borrarSaldo(saldo.id)} className='btn btn-danger ml-1'><i class="fa-solid fa-trash"></i></button> */}
                                        </>)}
                                        <Link to={`/cobrar/${saldo.id}`} className='btn btn-success ml-1'><i className="fa-solid fa-sack-dollar"></i> Cobrar</Link>
                                    </td>

                                </tr>
                            ))}

                        </tbody>

                    </table>
                </div>
            </div>

        </div>

    )


}

export default ComponenteMostrarSaldos