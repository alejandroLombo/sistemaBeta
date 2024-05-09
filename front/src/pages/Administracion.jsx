import axios from 'axios';
import { useState, useEffect } from 'react';


const URICLIENTES = 'http://localhost:8000/home';
const URIZONAS = 'http://localhost:8000/home/getTotalZonas';
const URIUSER = 'http://localhost:8000/home/getTotalUser';
const URISALDOS = 'http://localhost:8000/home/getSaldosPorZona';


export default function Administracion() {
  const [clientes, setClientes] = useState([])
  const [zonas, setZonas] = useState([])
  const [users, setUser] = useState([])
  const [saldos, setSaldos] = useState([])
  //console.log(cc_sva)
  useEffect(() => {
      getClientes()
      getZonas()
      getUser()
      getSaldos()
  }, [])

  const getClientes = async () => {
      const res = await axios.get(URICLIENTES)
      setClientes(res.data)
  }
  const getZonas = async () => {
      const res = await axios.get(URIZONAS)
      setZonas(res.data)
  }
  const getUser = async () => {
      const res = await axios.get(URIUSER)
      setUser(res.data)
  }
  const getSaldos = async () => {
      const res = await axios.get(URISALDOS)
      setSaldos(res.data)
  }


  return (
      <>
     


          <div class="container">
              <div class="row mt-4 mb-4">
                  <div className="col-md-12 col-md-4 col-lg-4 col-xl-4">
                      <div className="card">
                          <img src='/imagenes/zonas.jpeg' />
                          <div className="card-body">
                              <h5 className="card-title">Cantidad de Zonas</h5>
                              <p className="card-text badge bg-secondary">{zonas}</p>
                          </div>
                      </div>
                  </div>
                  <div className="col-md-12 col-md-4 col-lg-4 col-xl-4">
                      <div className="card">
                          <img src='/imagenes/clientes.webp' />
                          <div className="card-body">
                              <h5 className="card-title">Cantidad de clientes</h5>
                              <p className="card-text badge bg-secondary">{clientes}</p>
                          </div>
                      </div>
                  </div>
                  <div className="col-md-12 col-md-4 col-lg-4 col-xl-4">
                      <div className="card">
                          <img src='/imagenes/usuarios.png' />
                          <div className="card-body">
                              <h5 className="card-title">Cantidad de Usuarios</h5>
                              <p className="card-text badge bg-secondary">{users}</p>
                          </div>
                      </div>
                  </div>
              </div>
              <div className="row mt-4">
                  <div className="col-md-12 col-md-4 col-lg-4 col-xl-4">
                      <div className="card">
                          <img src='/imagenes/saldos2.jpeg' />
                          <div className="card-body">
                              <h4 className="card-title">Saldos Pendiente Zona 1</h4>
                              <p className="saldo card-text badge bg-secondary">${saldos.totalSaldosZona1}</p>
                          </div>
                      </div>
                  </div>
                  <div className="col-md-12 col-md-4 col-lg-4 col-xl-4">
                      <div className="card">
                          <img src='/imagenes/saldos1.jpeg' />
                          <div className="card-body">
                              <h4 className="card-title">Saldos Pendiente Zona 1</h4>
                              <p className="saldo card-text badge bg-secondary">${saldos.totalSaldosZona2}</p>
                          </div>
                      </div>
                  </div>

              </div>
          </div>

      </>
  )
}
