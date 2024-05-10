import axios from "axios";
import { useState, useEffect } from "react";
import { useNavigate, Link } from 'react-router-dom'

const URIcuentas = 'http://localhost:3000/cuentas/'
const URIclientes = 'http://localhost:3000/clientes/'

const ComponenteCrearSaldo = () => {

    const userString = localStorage.getItem('usuario');
    const user = userString ? JSON.parse(userString) : null;
    /* console.log(user.id_cargo); */


    const [numrem, setNumrem] = useState(0)
    const [totalrem, setTotalRem] = useState(0)
    const [repartidor, setRepartidor] = useState(0)
    const [efectivo, setEfectivo] = useState(0)
    const [transferencia, setTransferencia] = useState(0)
    const navigate = useNavigate()

    const [options, setOptions] = useState([]);
    const [selectedOption, setSelectedOption] = useState('')


    
    
    // obtengo el listado de clientes para el select del form
    const getClientes = async () => {
        await axios.get(URIclientes)
        .then(response => {
            setOptions(response.data)
            /* console.log(response.data); */
        })
        .catch(error => {
            console.log('Error:', error)
        })
        if (user.id_cargo !== 1) {
            setRepartidor(user.id)
            /* console.log("si entro al if") */
        }
    }



// crear saldo nuevo
const CrearSaldo = async (e) => {
    e.preventDefault();
    console.log(selectedOption);
    
    const cliente = JSON.parse(selectedOption);

    const codclient = cliente.id
    const vendedor = cliente.id
    const saldo = totalrem - efectivo - transferencia;
        try {
            await axios.post(URIcuentas + 'crear',
                {
                    codcliente: codclient,
                    num_rem: numrem,
                    total_rem: totalrem,
                    vendedor: vendedor,
                    repartidor: repartidor,
                    saldo: saldo,
                    anulado: 0
                })
               // console.log(vendedor);
            alert("Registro creado correctamente !")
            navigate('/saldos')
        } catch (error) {
            alert('Registro NO CREADO, error: ', error)
        }
    }



    // llamo las a las funciones necesarias al cargar el componente
    useEffect(() => {
        getClientes()

    }, [])



    return (
        <>
            <div className="container">
                <div className="row">
                    <h2>Crear Nuevo Saldo</h2>
                    <div className="col-sm-12 col-md-2 col-lg-2 col-lx-2 border-right border-dark">
                        <Link to='/saldos' className='btn btn-primary mt-2 mb-2'>Volver</Link>
                    </div>
                    <div className="col-sm-12 col-md-4 col-lg-4 col-lx-4">
                        <div className="mt-4 ml-4">

                            <form onSubmit={CrearSaldo} >
                                <select onChange={(e) =>setSelectedOption(e.target.value)} className="form-control">
                                    <option>Selecciona un cliente</option>
                                    {options.map(option => (
                                        <option key={option.id} value={JSON.stringify(option)}>
                                            {option.nombre}
                                        </option>
                                    ))}
                                </select>
                                <label>N° de Remito</label>
                                <input value={numrem} onChange={(e) => setNumrem(e.target.value)} className="form-control" type="number" />
                                <label >Total de Remito</label>
                                <input value={totalrem} onChange={(e) => setTotalRem(e.target.value)} className="form-control" type="number" />
                                {user.id_cargo === 1 && (<>
                                    <label >Repartidor</label>
                                    <input value={repartidor} onChange={(e) => setRepartidor(e.target.value)} className="form-control" /> </>)}
                                <label >Efectivo</label>
                                <input value={efectivo} onChange={(e) => setEfectivo(e.target.value)} className="form-control" type="number" />
                                <label >Transferencia</label>
                                <input value={transferencia} onChange={(e) => setTransferencia(e.target.value)} className="form-control" type="number" />
                                <button type="submit" className="btn btn-primary mt-3">Cargar</button>

                            </form>
                        </div>
                    </div>

                </div>

            </div>
        </>
    )
}

export default ComponenteCrearSaldo