const sgdCtrl = {};

const pool = require('../database');

sgdCtrl.renderUsers = async (req, res) => {
    const users = await pool.query('SELECT * FROM user');
    const deps = await pool.query('SELECT * FROM dependence');
    res.render('admin/users/users', { users, deps });
};

sgdCtrl.addUser =  async (req, res) => {
    const { name, username, email, dependence, id, profile, rol, ext, address } = req.body;
    var sql = `INSERT INTO user ( usr_id, usr_username, usr_password, usr_name, 
        usr_email, usr_profile, dep_id, usr_address, usr_rol, usr_ext, usr_state )
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`;
    await pool.query(sql, [id, username, '123', 
                            name, email, profile, 
                            dependence, address, rol, ext, 'Activo']);
    res.redirect('/users');
};

sgdCtrl.renderEditUser = async (req, res) => {
    const { usr_id } = req.params;
    const user = await pool.query('SELECT * FROM user WHERE usr_id = ?', [usr_id]);
    const deps = await pool.query('SELECT * FROM dependence') ;
    res.render('admin/users/edit', {user: user[0], deps});
};

sgdCtrl.editUser = async (req,res) => {
    const { usr_id } = req.params;
    const { fullname, username, email, dependence, id, profile, rol, ext, address, state} = req.body;
    var sql = `UPDATE user 
        SET usr_id = ?, usr_username = ?, usr_fullname = ?, usr_email = ?, usr_profile = ?,
            dep_id = ?, usr_address = ?, usr_rol = ?, usr_ext = ?, usr_state = ?
        WHERE usr_id = ?`;
    await pool.query(sql, [id, username, fullname, email, profile, 
                            dependence, address, rol, ext, state, usr_id]);
    res.redirect('/sgd/users');
}

sgdCtrl.renderRoles = (req, res) => {
    res.render('admin/roles/roles');
};

sgdCtrl.addRole = async (req, res) => {
    res.redirect('/roles'); 
};

sgdCtrl.renderEditRole = async (req, res) => {
    const { rol_id } = req.params;
    const rol = await pool.query('SELECT * FROM roles WHERE rol_id = ?', [rol_id]);
    res.render('admin/roles/edit', {rol: rol[0]});
};

sgdCtrl.editRole = async (req,res) => {
    const { rol_id } = req.params;
    const { id, name} = req.body;
    var sql = `UPDATE roles 
        SET rol_id = ?, rol_name = ?
        WHERE rol_id = ?`;
    await pool.query(sql, [id, name, rol_id]);
    res.redirect('/sgd/roles');
}

sgdCtrl.renderDoctypes = async (req, res) => {
    const doctypes = await pool.query('SELECT * FROM doctype') ;
    res.render('admin/doctypes/doctypes', { doctypes });
};

sgdCtrl.addDoctype = async (req, res) => {
    const { id, name, days } = req.body;
    let sql = `INSERT INTO doctype (
        doc_id, doc_name, doc_days)
        VALUES (?, ?, ?)`;
    await pool.query(sql, [id, name, days]);
    res.redirect('/doctypes');  
};

sgdCtrl.renderEditDoctype = async (req, res) => {
    const { doctype_id } = req.params;
    const doctype = await pool.query('SELECT * FROM doctype WHERE doctype_id = ?', [doctype_id]);
    res.render('admin/doctypes/edit', {doctype: doctype[0]});
};

sgdCtrl.editDoctype = async (req,res) => {
    const { doctype_id } = req.params;
    const { id, name, days} = req.body;
    var sql = `UPDATE doctype 
        SET doctype_id = ?, doctype_name = ?, doctype_days = ?
        WHERE doc_id = ?`;
    await pool.query(sql, [id, name, days, doctype_id]);
    res.redirect('/sgd/doctypes');
}

sgdCtrl.renderDeps = async (req, res) => {
    const deps = await pool.query('SELECT * FROM dependence') ;
    res.render('admin/dependencies/dependencies', { deps });
};

sgdCtrl.addDeps = async (req, res) => {
    const { id, name, address } = req.body;
    let sql = `INSERT INTO dependence (
        dep_id, dep_name, ed_id)
        VALUES (?, ?, ?)`;
    await pool.query(sql, [id, name, address]);
    res.redirect('/dependencies');  
};

sgdCtrl.renderEditDep = async (req, res) => {
    const { dep_id } = req.params;
    const dep = await pool.query('SELECT * FROM dependence WHERE dep_id = ?', [dep_id]);
    const buildings = await pool.query('SELECT * FROM building') ;
    res.render('admin/dependencies/edit', {dep: dep[0], buildings});
};

sgdCtrl.editDep = async (req,res) => {
    const { dep_id } = req.params;
    const { id, name, building} = req.body;
    var sql = `UPDATE dependence 
        SET dep_id = ?, dep_name = ?, ed_id = ?
        WHERE dep_id = ?`;
    await pool.query(sql, [id, name, buildign, dep_id]);
    res.redirect('/sgd/dependencies');
}

sgdCtrl.renderContacts = async (req, res) => {
    res.render('admin/contacts/contacts');
};

sgdCtrl.addContact = async (req, res) => {
    res.redirect('/contacts'); 
};

sgdCtrl.renderEditContact = async (req, res) => {
    const { ct_id } = req.params;
    const contact = await pool.query('SELECT * FROM contact WHERE ct_id = ?', [ct_id]);
    res.render('admin/contacts/edit', {contact: contact[0]});
};

sgdCtrl.editContact = async (req,res) => {
    const { ct_id } = req.params;
    const { id, fullname, email, tel, country, dpto, city} = req.body;
    var sql = `UPDATE contact 
        SET ct_id = ?, ct_fullname = ?, ct_email = ?, ct_tel = ?,
            ct_address = ?, country_id = ?, dpto_id = ?, city_id = ?
        WHERE ct_id = ?`;
    await pool.query(sql, [id, fullname, email, tel, country, dpto, city, ct_id]);
    res.redirect('/sgd/contacts');
}

sgdCtrl.renderBuildings = async (req, res) => {
    const buildings = await pool.query('SELECT * FROM building');
    res.render('admin/buildings/buildings', {buildings});
};

sgdCtrl.addBuildings = async (req, res) => {
    const { id, name, address } = req.body;
    var sql = `INSERT INTO building ( ed_id, ed_name, ed_address )
        VALUES (?, ?, ?)`;
    await pool.query(sql, [id, name, address]);
    res.redirect('/buildings'); 
};

sgdCtrl.renderEditBuilding = async (req, res) => {
    const { ed_id } = req.params;
    const building = await pool.query('SELECT * FROM building WHERE ed_id = ?', [ed_id]);
    res.render('admin/buildings/edit', {building: building[0]});
};

sgdCtrl.editBuilding = async (req,res) => {
    const { ed_id } = req.params;
    const { id, name, address} = req.body;
    var sql = `UPDATE building 
        SET ed_id = ?, ed_name = ?, ed_address = ?
        WHERE ed_id = ?`;
    await pool.query(sql, [id, name, address, ed_id]);
    res.redirect('/sgd/buildings');
}


sgdCtrl.renderChangePass = (req, res) => {
    res.render('auth/pass');
};

sgdCtrl.changePass = (req, res) => {
    res.redirect('users');
};

sgdCtrl.renderHelp = (req, res) => {
    res.render('help/help');
};

sgdCtrl.renderChart = (req, res) => {
    res.render('chart/chart');
};

sgdCtrl.renderIncomeDoc = async (req, res) => {
    const doctypes = await pool.query('SELECT * FROM doctype');
    const deps = await pool.query('SELECT * FROM dependence');
    const users = await pool.query('SELECT * FROM user');
    const country = await pool.query('SELECT * FROM country');
    const countrySel = req.query.inputCountry;
    const dpto = await pool.query('SELECT * FROM dpto');
    const city = await pool.query('SELECT * FROM city');
    res.render('files/income_doc',{ doctypes, deps, users, country, dpto, city});
};

sgdCtrl.addIncomeDoc = async (req, res) => {
    const countrySel = res.query.inputCountry;
    

    res.redirect('users'); 
};

module.exports = sgdCtrl;

/* app.get('/some/route', function(req, res) {
    res.writeHead(200, {
      'Content-Disposition': 'attachment; filename="file.xlsx"',
      'Transfer-Encoding': 'chunked',
      'Content-Type': 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'
    })
    var workbook = new Excel.stream.xlsx.WorkbookWriter({ stream: res })
    var worksheet = workbook.addWorksheet('some-worksheet')
    worksheet.addRow(['foo', 'bar']).commit()
    worksheet.commit()
    workbook.commit()
  } */