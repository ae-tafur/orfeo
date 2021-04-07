const express = require('express');
const router = express.Router();

/* const { isLoggedIn } = require('../lib/auth'); */

const { renderUsers, addUser, renderEditUser, editUser, 
    renderRoles, addRole, renderEditRole, editRole,
    renderDoctypes, addDoctype, renderEditDoctype, editDoctype,
    renderDeps, addDeps, renderEditDep, editDep,
    renderContacts, addContact, renderEditContact, editContact,
    renderBuildings, addBuildings, renderEditBuilding, editBuilding,
    renderChangePass, changePass, renderHelp, renderChart, renderIncomeDoc, addIncomeDoc} = require('../controllers/controller_sgd')

// Authorization
/* router.use(isLoggedIn); */

// Routes

/* router.get('/', isLoggedIn, renderLinks); */

// admin routes
router.get('/users', renderUsers);
router.post('/users', addUser);
router.get('/edit_:usr_id', renderEditUser);
router.post('/edit_:usr_id', editUser);
router.get('/roles', renderRoles);
router.post('/roles', addRole);
router.get('/edit_:rol_id', renderEditRole);
router.post('/edit_:rol_id', editRole);
router.get('/doctypes', renderDoctypes);
router.post('/doctypes', addDoctype);
router.get('/edit_:doc_id', renderEditDoctype);
router.post('/edit_:doc_id', editDoctype);
router.get('/dependencies', renderDeps);
router.post('/dependencies', addDeps);
router.get('/edit_:dep_id', renderEditDep);
router.post('/edit_:dep_id', editDep);
router.get('/contacts', renderContacts);
router.post('/contacts', addContact);
router.get('/edit_:ct_id', renderEditContact);
router.post('/edit_:ct_id', editContact);
router.get('/buildings', renderBuildings);
router.get('/buildings', addBuildings);
router.get('/edit_:ed_id', renderEditBuilding);
router.post('/edit_:ed_id', editBuilding);

// navbar routes
router.get('/pass', renderChangePass);
router.post('/pass', changePass);
router.get('/help', renderHelp);
router.get('/charts',renderChart);

// sidebar routes
router.get('/income_paper', renderIncomeDoc);
router.post('/income_paper', addIncomeDoc);

module.exports = router;