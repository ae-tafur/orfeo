const express = require('express');
const router = express.Router();

/* const { isLoggedIn } = require('../lib/auth'); */

const { renderUsers, addUser, renderEditUser, editUser, renderRoles, addRole, 
    renderDoctypes, addDoctype, 
    renderDeps, addDeps, renderContacts, addContact, renderBuildings, addBuildings,
    renderChangePass, changePass, renderHelp, renderChart, renderIncomeDoc, addIncomeDoc} = require('../controllers/controller_sgd')

// Authorization
/* router.use(isLoggedIn); */

// Routes

/* router.get('/', isLoggedIn, renderLinks); */

// admin routes
router.get('/users', renderUsers);
router.post('/users', addUser);
router.get('/users/edit/:usr_id', renderEditUser);
router.post('/users/edit/:usr_id', editUser);
router.get('/roles', renderRoles);
router.post('/roles', addRole);
router.get('/doctypes', renderDoctypes);
router.post('/doctypes', addDoctype);
router.get('/dependencies', renderDeps);
router.post('/dependencies', addDeps);
router.get('/contacts', renderContacts);
router.post('/contacts', addContact);
router.get('/buildings', renderBuildings);
router.get('/buildings', addBuildings);

// navbar routes
router.get('/pass', renderChangePass);
router.post('/pass', changePass);
router.get('/help', renderHelp);
router.get('/charts',renderChart);

// sidebar routes
router.get('/income_paper', renderIncomeDoc);
router.post('/income_paper', addIncomeDoc);

module.exports = router;