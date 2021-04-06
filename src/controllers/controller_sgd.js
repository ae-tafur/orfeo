const sgdCtrl = {};

const pool = require('../database');

sgdCtrl.renderUsers = async (req, res) => {
    const users = await pool.query('SELECT * FROM user') ;
    const deps = await pool.query('SELECT * FROM dependence') ;
    res.render('admin/users/users', { users, deps });
};

sgdCtrl.addUser =  async (req, res) => {
    const { fullname, username, email, dependence, id, profile, rol, ext, address } = req.body;
    var sql = `INSERT INTO user ( usr_id, usr_username, usr_password, usr_fullname, 
        usr_email, usr_profile, dep_id, usr_address, usr_rol, usr_ext, usr_state )
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`;
    await pool.query(sql, [id, username, '123', 
                            fullname, email, profile, 
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
    console.log(usr_id);
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
    res.render('admin/roles');
};

sgdCtrl.addRole = async (req, res) => {
    res.redirect('roles'); 
};

sgdCtrl.renderDoctypes = async (req, res) => {
    const doctypes = await pool.query('SELECT * FROM doctype') ;
    res.render('admin/doctype', { doctypes });
};

sgdCtrl.addDoctype = async (req, res) => {
    const { id, name, days } = req.body;
    let sql = `INSERT INTO doctype (
        doc_id, 
        doc_name,  
        doc_days)
        VALUES (?, ?, ?)`;
    await pool.query(sql, [id, name, days]);
    res.redirect('doctypes');  
};

sgdCtrl.renderDeps = async (req, res) => {
    const deps = await pool.query('SELECT * FROM dependence') ;
    res.render('admin/dependencies', { deps });
};

sgdCtrl.addDeps = async (req, res) => {
    const { id, name, address } = req.body;
    let sql = `INSERT INTO dependence (
        dep_id, 
        dep_name,  
        dep_building)
        VALUES (?, ?, ?)`;
    await pool.query(sql, [id, name, address]);
    res.redirect('dependencies');  
};

sgdCtrl.renderContacts = async (req, res) => {
    res.render('admin/contacts');
};

sgdCtrl.addContact = async (req, res) => {
    res.redirect('contacts'); 
};

sgdCtrl.renderBuildings = async (req, res) => {
    res.render('admin/buildings');
};

sgdCtrl.addBuildings = async (req, res) => {
    res.redirect('buildings'); 
};


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