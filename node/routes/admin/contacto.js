import express from "express";
var router = express.Router();
import nodemailer from 'nodemailer'

router.route('/')
  .get((req, res) => {
    res.render('admin/contacto', {
      layout: 'admin/layout'
    });
  })
  .post(async (req, res) => {
    try {

      var transport = nodemailer.createTransport({
        host: "smtp://sandbox.smtp.mailtrap.io:2525",
        port: 2525,
        auth: {
          user: "4fa5f020ae2391",
          pass: "fdb3a14e480471"
        }
      });
      const mail = {
        to: 'fmancini.2017@gmail.com',
        subject: 'Contacto Web',
        html: `${req.body.nombre} te ha enviado un mensaje y desea una respuesta a este correo electrónico ${req.body.email}<br> Con el siguiente mensaje: ${req.body.mensaje} y su teléfono es: ${req.body.telefono}`
      }

      console.log(mail);

      // Configuración y envío del correo con Nodemailer

      // Renderizar la vista y enviarla como respuesta
      
      res.redirect('/')
    } catch (error) {
      console.error(error);
      res.render('admin/login', { mensaje: "Error al enviar el correo",error });
    }
  });


export default router;