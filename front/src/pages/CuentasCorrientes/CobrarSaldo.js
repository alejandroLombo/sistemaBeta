import axios from "axios";
import { useEffect, useState, useCallback } from "react";
import { Link, useNavigate, useParams } from "react-router-dom";

const URIcuentas = 'http://localhost:3000/cuentas/'
const URIpagos = 'http://localhost:3000/pagos/'

const ComponenteCobrarSaldo = () => {

    const userString = localStorage.getItem('usuario');
    const user = userString ? JSON.parse(userString) : null;
    const { id } = useParams()
    const [saldo, setSaldo] = useState(0)
    const [efectivo, setEfectivo] = useState(0)
    const [transferencia, setTransferencia] = useState(0)
    const navigate = useNavigate()

    const [cuenta, setCuenta] = useState([])
    /* console.log(cuentas); */


    //Obtener el saldo de la cuenta seleccionada
    const getSaldoById = useCallback(async () => {
        try {
            const res = await axios.get(URIcuentas + id)
            setCuenta(res.data)
            setSaldo(res.data.saldo)
            
        } catch (error) {
            console.error('Error:', error);
        }
    }, [id])

    // cobrar saldo; en el caso de que se cobre en totalidad se borra la cuenta
    const cobrarSaldo = async (e) => {
        const NvoSaldo = saldo - efectivo - transferencia
        const fechaActual = new Date();
        const fechaFormateada = fechaActual.toISOString().split('T')[0];
        e.preventDefault()
        try {
            if (NvoSaldo >= 0) {
                await axios.put(URIcuentas + id, {
                    saldo: NvoSaldo
                })
                try {
                    await axios.post(URIpagos + 'crear',
                        {
                            id_cc: id,
                            idCliente: cuenta.codcliente,
                            fecha: fechaFormateada,
                            efectivo: efectivo,
                            transferencia: transferencia,
                            cobrador: user.nombre
                        })
                } catch (error) {
        
                }
                alert(`Saldo actualizado correctamente !`)
                navigate('/saldos')

            } else {
                alert('El Saldo queda en NEGATIVO! Por favor verifique el cobro')
            }

        } catch (error) {
            console.error('Error:', error);
            navigate('/saldos')
        }
    }


    // llamo las a las funciones necesarias al cargar el componente
    useEffect(() => {
        getSaldoById()
        /* cuentasFind() */


    }, [getSaldoById])



    // vista
    return (
        <div className="form">
            <h2>Cobrar Saldo</h2>
            <form onSubmit={cobrarSaldo} className="formulario">
                <div>

                    <div>
                        <label>Nombre del cliente</label>
                        <input className="form-control"
                            type="text"
                            value={cuenta && cuenta.cliente && cuenta.cliente.nombre}
                            disabled
                        />
                    </div>

                </div>
                <div>
                    <label>Fecha de Entrega</label>
                    <input value={cuenta.fecha} className="form-control" disabled
                    />
                </div>
                <div>
                    <label>Numero Remito</label>
                    <input value={cuenta.num_rem}  className="form-control" disabled
                    />
                </div>
                <div>
                    <label>Total Remito</label>
                    <input value={cuenta.total_rem} className="form-control" disabled
                    />
                </div>
                <div>
                    <label>Saldo</label>
                    <input value={cuenta.saldo}  className="form-control" disabled
                    />
                </div>

                <div>
                    <label>Efectivo</label>
                    <input value={efectivo} onChange={(e) => setEfectivo(e.target.value)} className="form-control" type="number"
                    />
                </div>

                <div>
                    <label>Tranferencia</label>
                    <input value={transferencia} onChange={(e) => setTransferencia(e.target.value)} className="form-control" type="number"
                    />
                </div>
                <div>
                    <button type="submit" className="btn btn-success mt-4">Cobrar</button>
                    <Link to='/saldos' className="btn btn-danger ml-5 mt-4">Volver</Link>
                </div>
            </form>
        </div>
    )

}

export default ComponenteCobrarSaldo