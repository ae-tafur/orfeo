const express = require('express');
const router = express.Router();

/* const { isLoggedIn } = require('../lib/auth'); */

const { renderUsers, addUser, renderEditUser, editUser, 
    renderRoles, addRole, renderEditRole, editRole,
    renderDoctypes, addDoctype, renderEditDoctype, editDoctype,
    renderDeps, addDeps, renderEditDep, editDep,
    renderContacts, addContact, renderEditContact, editContact,
    renderBuildings, addBuildings, renderEditBuilding, editBuilding,
    renderChangePass, changePass, renderHelp, renderChart, renderNewDoc, addNewDoc} = require('../controllers/controller_sgd')

// Authorization
/* router.use(isLoggedIn); */

// Routes

/* router.get('/', isLoggedIn, renderLinks); */

// admin routes
router.get('/users', renderUsers);
router.post('/users', addUser);
router.get('/edit_usr_:usr_id', renderEditUser);
router.post('/users/edit/:usr_id', editUser);
router.get('/roles', renderRoles);
router.post('/roles', addRole);
router.get('/edit_rol_:rol_id', renderEditRole);
router.post('/roles/edit/:rol_id', editRole);
router.get('/doctypes', renderDoctypes);
router.post('/doctypes', addDoctype);
router.get('/edit_doctype_:doctype_id', renderEditDoctype);
router.post('/doctypes/edit/:doctype_id', editDoctype);
router.get('/dependencies', renderDeps);
router.post('/dependencies', addDeps);
router.get('/edit_dep_:dep_id', renderEditDep);
router.post('/dependencies/edit/:dep_id', editDep);
router.get('/contacts', renderContacts);
router.post('/contacts', addContact);
router.get('/edit_ct_:ct_id', renderEditContact);
router.post('/contacts/edit/:ct_id', editContact);
router.get('/buildings', renderBuildings);
router.post('/buildings', addBuildings);
router.get('/edit_ed_:ed_id', renderEditBuilding);
router.post('/buildings/edit/:ed_id', editBuilding);

// navbar routes
router.get('/pass', renderChangePass);
router.post('/pass', changePass);
router.get('/help', renderHelp);
router.get('/charts',renderChart);

// sidebar routes
router.get('/new_doc', renderNewDoc);
router.post('/new_doc', addNewDoc);

module.exports = router;