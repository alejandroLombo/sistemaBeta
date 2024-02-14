import axios from "axios";
import { useCallback, useEffect, useState } from "react";
import { useNavigate, useParams, Link } from "react-router-dom";

const URIcuentas = 'http://localhost:8000/cuentas/'
const URIclientes = 'http://localhost:8000/clientes/'


const ComponenteEditarSaldo = () => {
    const { id } = useParams()

    // valores que se van a pasar al actualizar - valores ingresados por form
    const [numrem, setNumRem] = useState(0)
    const [totalrem, setTotalRem] = useState(0)
    const [saldo, setSaldo] = useState(0)
    const [zona, setZona] = useState(0)
    const [efectivo, setEfectivo] = useState(0)
    const [transferencia, setTransferencia] = useState(0)
    const navigate = useNavigate()

    // guardo clientes y opciones del select
    const [options, setOptions] = useState([]);
    const [selectedOption, setSelectedOption] = useState('')

    // obtengo datos de la cuenta con el ID
    const getCuentaById = useCallback(async () => {
        try {
            const res = await axios.get(URIcuentas + id)
            setNumRem(res.data.num_rem)
            setTotalRem(res.data.total_rem)
            setSaldo(res.data.saldo)
            setZona(res.data.zona)
        } catch (error) {
            console.error('Error:', error);
        }
    }, [id])

    //consulto clientes para el select
    const getClientes = async () => {
        await axios.get(URIclientes)
            .then(response => {
                setOptions(response.data)
                console.log(response.data);
            })
            .catch(error => {
                console.log('Error:', error)
            })
    }

    // actualizar Saldo
    const actualizarSaldo = async (e) => {
        e.preventDefault()
        try {
            if (saldo > 0) {
                await axios.put(`${URIcuentas}${id}`, {
                    codcliente: selectedOption,
                    num_rem: numrem,
                    total_rem: totalrem,
                    zona: zona,
                    saldo: saldo,
                    anulado: 0
                })
                alert('Registro actualizado correctamente !')
                navigate('/saldos')
            } else {
                alert('Saldo NEGATIVO !')
            }
        } catch (error) {
            console.error('Error:', error);
            navigate('/saldos')
        }
    }

    const anularSaldo = async (e) => {
        try {
            
                await axios.put(`${URIcuentas}${id}`, {
                    anulado: 1
                })
                alert('Cuenta Corriente Anulada Exitosamente !')
                navigate('/saldos')
        } catch (error) {
            console.error('Error:', error);
            navigate('/saldos')
        }
    }

    const borrarSaldo = async () => {
        try {
            await axios.delete(`${URIcuentas}${id}`)
            console.log(id)
            alert('Registro Eliminado')
            navigate('/saldos')
            
        } catch (error) {
            console.error('Error:', error);
        }
    }

    //llamo las a las funciones necesarias al cargar el componente
    useEffect(() => {
        getCuentaById()
        getClientes()
    }, [getCuentaById])

    // vista
    return (
        <>
            <div className="container">
                <h2>Editar Saldo</h2>
                <div className="row">
                    <div className="col-sm-12 col-md-2 col-lg-2 col-lx-2 border-right border-dark">
                        <Link to='/saldos' className='btn btn-primary mt-2 mb-2'>Volver</Link>
                        <br/>
                        <button onClick={() => anularSaldo(saldo.id)} className='btn btn-warning ml-1 mt-2'><i class="fa-solid fa-trash"></i>Anular Cta Cte</button>
                        <button onClick={() => borrarSaldo(saldo.id)} className='btn btn-danger ml-1 mt-2'><i class="fa-solid fa-trash"></i>Borrar Cta Cte</button>
                        
                    </div>
                    <div className="col-sm-12 col-md-4 col-lg-4 col-lx-4">
                        <form onSubmit={actualizarSaldo} >
                            <label >Cliente</label>
                            <select
                                value={selectedOption}
                                onChange={(e) => setSelectedOption(e.target.value)} className="form-control">
                                <option>Selecciona un cliente</option>
                                {options.map(option => (
                                    <option key={option.id} value={option.id}>
                                        {option.nombre}
                                    </option>
                                ))}
                            </select>
                            <label>N° de Remito</label>
                            <input value={numrem} onChange={(e) =>setNumRem(e.target.value)}className="form-control"/>

                            <label>Total del Remito</label>
                            <input value={totalrem} onChange={(e) => setTotalRem(e.target.value)} className="form-control"
                            />

                            <label>Saldo</label>
                            <input value={saldo} onChange={(e) => setSaldo(e.target.value)} className="form-control"
                            />

                            <label >Zona</label>
                            <input value={zona} onChange={(e) => setZona(e.target.value)} className="form-control"
                            />

                            <label>Efectivo</label>
                            <input value={efectivo} onChange={(e) => setEfectivo(e.target.value)} className="form-control"
                            />

                            <label>Tranferencia</label>
                            <input value={transferencia} onChange={(e) => setTransferencia(e.target.value)} className="form-control"
                            />


                            <button type="submit" className="btn btn-primary mt-3">Editar Saldo</button>


                        </form>
                    
                    </div>

                </div>
            </div>
        </>
    )

}

export default ComponenteEditarSaldo