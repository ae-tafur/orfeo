const sgdCtrl = {};

const pool = require('../database');

sgdCtrl.renderAddUser = async (req, res) => {
    const users = await pool.query('SELECT * FROM user') ;
    const deps = await pool.query('SELECT * FROM dependence') ;
    res.render('admin/users', { users, deps });
};

sgdCtrl.addUser =  async (req, res) => {
    const { fullname, username, email, dependence, id, profile, rol, ext, address } = req.body;
    let sql = `INSERT INTO user (
        id, username, password, fullname, email, profile, dependence, 
        address, rol, ext, active)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`;
    await pool.query(sql, [id, username, '123', 
                            fullname, email, profile, 
                            dependence, address, rol, ext, 'Activo']);
    res.redirect('users');  
};

sgdCtrl.renderAddRole = (req, res) => {
    res.render('admin/roles');
};

sgdCtrl.addRole = async (req, res) => {
    res.redirect('roles'); 
};

sgdCtrl.renderAddDoctype = async (req, res) => {
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

sgdCtrl.renderAddDeps = async (req, res) => {
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

sgdCtrl.renderAddContact = async (req, res) => {
    res.render('admin/contacts');
};

sgdCtrl.addContact = async (req, res) => {
    res.redirect('contacts'); 
};

sgdCtrl.renderAddBuildings = async (req, res) => {
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

sgdCtrl.renderIncomePaper = async (req, res) => {
    const doctypes = await pool.query('SELECT * FROM doctype');
    const deps = await pool.query('SELECT * FROM dependence');
    const users = await pool.query('SELECT * FROM user');
    const country = await pool.query('SELECT * FROM country');
    const dpto = await pool.query('SELECT * FROM dpto');
    const city = await pool.query('SELECT * FROM city');
    res.render('files/income_paper',{ doctypes, deps, users, country, dpto, city});
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