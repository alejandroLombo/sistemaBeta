import axios from "axios";
import { useEffect, useState } from "react"
import { useParams, Link, } from "react-router-dom";


const URI = 'http://localhost:3000/pagos/'


const ComponenteMostrarPagos = () => {
    const { id } = useParams()
    const [pagos, setPagos] = useState([])

    //Obtener el saldo de la cuenta seleccionada
    const getSaldoById = async () => {
        try {
            const res = await axios.get(`${URI}${id}`)
            setPagos([res.data])
            
        } catch (error) {
            console.error('Error:', error);
        }
    }



    // llamo las a las funciones necesarias al cargar el componente
    useEffect(() => {

        getSaldoById()

    }, [])

    //console.log(pagos)
    return (

        <div className='container'>
            <div className='row'>
                <h1>Cuentas Corrientes</h1>
                <div className="col-sm-12 col-md-1 col-lg-1 col-lx-1 border-right border-dark">
                    <Link to='/saldos' className='btn btn-secondary mt-2 mb-2'><i className="fa-solid fa-rotate-left"></i>  Atras</Link>
                </div>
                <div className="col-sm-12 col-md-11 col-lg-11 col-lx-11">
                    <table className='table'>
                        <thead className='table-primary'>
                            <tr>
                                <th>#</th>
                                <th>Cta Cte</th>
                                <th>Cliente</th>
                                <th>Fecha</th>
                                <th>Efectivo</th>
                                <th>Transferencia</th>
                                <th>Cobrado por:</th>
                            </tr>
                        </thead>
                        <tbody>
                            {pagos && pagos[0] ? (
                                pagos[0].map((pago) => (
                                    <tr key={pago.id}>
                                        <td>{pago.id}</td>
                                        <td>{pago.id_cc}</td>
                                        <td>{pago.cliente && pago.cliente.nombre ? pago.cliente.nombre : 'NO HAY PAGOS REGISTRADOS'}</td>
                                        <td>{pago.fecha}</td>
                                        <td>{pago.efectivo ? '$' + pago.efectivo : ''}</td>
                                        <td>{pago.transferencia ? '$' + pago.transferencia : '$0'}</td>
                                        <td>{pago.cobrador}</td>
                                    </tr>
                                ))
                            ) : (
                                <tr>
                                    <td colSpan="7">NO HAY PAGOS REGISTRADOS</td>
                                </tr>
                            )}
                            {/*                             {pagos && pagos[0] && pagos[0].map((pago) => (
                                <tr key={pago.id}>
                                    <td>{pago.id}</td>
                                    <td>{pago.id_cc}</td>
                                    {<td>{pago.cliente && pago.cliente.nombre ? pago.cliente.nombre : 'NO HAY PAGOS REGISTRADOS'}</td>}

                                    <td>{pago.fecha}</td>
                                    <td>{pago.efectivo ? '$' + pago.efectivo : ''}</td>
                                    <td>{pago.transferencia ? '$' + pago.transferencia : ''}</td>
                                    <td>{pago.cobrador}</td>

                                </tr>
                            ))} */}

                        </tbody>

                    </table>
                </div>
            </div>

        </div>


    )

}
export default ComponenteMostrarPagos