const express = require('express');
const pool = require('../database');
const router = express.Router();

const db = require('../database');

router.get('/pass', (req, res) => {
    res.render('auth/pass');
});

router.post('/pass', (req, res) => {
    res.redirect('/sgd/users');
});

router.get('/help', (req, res) => {
    res.render('help/help');
});

router.get('/charts', (req, res) => {
    res.render('chart/chart');
});


router.get('/users', async (req, res) => {
    const users = await pool.query('SELECT * FROM user') ;
    res.render('admin/user/users', { users });
});

router.post('/users', async (req, res) => {
    const { fullname, username, email, dependence, id, profile, rol, ext, address } = req.body;
    let sql = `INSERT INTO user (
        id, 
        username, 
        password, 
        fullname, 
        email, 
        profile, 
        dependence, 
        address, 
        rol, 
        ext, 
        active)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`;
    await pool.query(sql, [id, username, '123', 
                            fullname, email, profile, 
                            dependence, address, rol, ext, 'Activo']);
    res.redirect('users');  
});

router.put('/users/:id', async (req, res) => {
    console.log("prueba de que ingresa aqui en put");
  });

  router.get('/users/:id', async (req, res) => {
    console.log("prueba de que ingresa aqui en get ");
  });

  router.post('/users/:id', async (req, res) => {
    console.log("prueba de que ingresa aqui en post");
  });

router.get('/roles', (req, res) => {
    res.render('admin/role/roles');
});

router.get('/doctypes', (req, res) => {
    res.render('admin/doctype/doctype');
});

router.get('/dependencies', (req, res) => {
    res.render('admin/dependency/dependencies');
});

router.get('/contacts', (req, res) => {
    res.render('admin/contact/contacts');
});

router.get('/buildings', (req, res) => {
    res.render('admin/building/buildings');
});

router.get('/income_paper', (req, res) => {
    res.render('files/income_paper');
});

module.exports = router;