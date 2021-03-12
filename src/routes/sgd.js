const express = require('express');
const router = express.Router();

const db = require('../database');

router.get('/users', (req, res) => {
    res.render('admin/user/users');
});

router.post('/users', (req, res) => {
    const { name, username, id } = req.body;
    console.log(req.body);
    res.render('admin/user/users');
});

router.get('/roles', (req, res) => {
    res.render('admin/role/roles');
});

router.get('/files', (req, res) => {
    res.render('admin/file/files');
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

module.exports = router;