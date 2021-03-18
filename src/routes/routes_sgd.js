const express = require('express');
const router = express.Router();

/* const { isLoggedIn } = require('../lib/auth'); */

const { renderAddUser, addUser, renderAddRole, addRole, renderAddDoctype, addDoctype, 
    renderAddDeps, addDeps, renderAddContact, addContact, renderAddBuildings, addBuildings,
    renderChangePass, changePass, renderHelp, renderChart, renderIncomePaper} = require('../controllers/controller_sgd')

// Authorization
/* router.use(isLoggedIn); */

// Routes

/* router.get('/', isLoggedIn, renderLinks); */

// admin routes
router.get('/users', renderAddUser);
router.post('/users', addUser);
router.get('/roles', renderAddRole);
router.post('/roles', addRole);
router.get('/doctypes', renderAddDoctype);
router.post('/doctypes', addDoctype);
router.get('/dependencies', renderAddDeps);
router.post('/dependencies', addDeps);
router.get('/contacts', renderAddContact);
router.post('/contacts', addContact);
router.get('/buildings', renderAddBuildings);
router.get('/buildings', addBuildings);

// navbar routes
router.get('/pass', renderChangePass);
router.post('/pass', changePass);
router.get('/help', renderHelp);
router.get('/charts',renderChart);

// sidebar routes
router.get('/income_paper', renderIncomePaper);

module.exports = router;