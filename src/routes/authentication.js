const express = require('express');
const router = express.Router();

const db = require('../database');

router.get('/signin', (req, res) => {
    res.render('/auth/signin')
});


module.exports = router;