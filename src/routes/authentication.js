const express = require('express');
const router = express.Router();
const db = require('../database');

router.get('/login', (req, res) => {
    res.render('/auth/login')
});


module.exports = router;