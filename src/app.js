const express = require('express');
const morgan = require('morgan');
const path = require('path');
const exphbs = require('express-handlebars');

const { database, port } = require('./config');

/* Initialization */

const app = express();


/* Setting */

app.set('port', port);
app.set('views', path.join(__dirname, 'views'));
app.engine('.hbs', exphbs({
  defaultLayout: 'main',
  layoutsDir: path.join(app.get('views'), 'layouts'),
  partialsDir: path.join(app.get('views'), 'partials'),
  extname: '.hbs',
  helpers: require('./lib/handelbars')
}))
app.set('view engine', '.hbs');

/* Middlewares */

app.set(morgan('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));

/* Global variables */

app.use((req, res, next) => {


    next();
});

/* Routes */

app.use(require('./routes/routes_index'));
app.use(require('./routes/routes_authentication'));
app.use('/sgd', require('./routes/routes_sgd'));

/* Public */

app.use(express.static(path.join(__dirname, 'public')));

module.exports = app;
