//var express = require('express');
import UserModel from "../../models/UserModel.js";
import express from "express";
var router = express.Router();

//var usuariosModel = require('./../../models/usuariosModels')

/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('admin/login', {
    layout: 'admin/layout'
  });
});

router.get('/contacto', function(req, res, next){
  res.render("admin/contacto", {
    layout: 'admin/layout'
  }
  );
});

router.get('/logout', function (req, res, next) {
  req.session.destroy();
  res.redirect('http://localhost:8000')
});

router.post('/', async (req, res) => {
  try {
    // consulta los usuarios de la bd
    const User = await UserModel.findOne({
      where: {
        usuario: req.body.usuario,
        password: req.body.password
      }
    });
    // Acceso o no
    if (User !== null) {
      console.log(User);
      /* req.session.id = User.id; */
      req.session.usuario = User.usuario;
      res.redirect('http://localhost:3000/saldos');
    } else {
      res.render('admin/login', {
        layout: 'admin/layout',
        error: true
      });
    }
  } catch (error) {
    console.log(error);
    // res.json({ message: error.message });
  }
});


export default router;