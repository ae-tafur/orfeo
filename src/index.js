const express = require('express');
const morgan = require('morgan');
const path = require('path');
const exphbs = require('express-handlebars');

/* Initialization */

const app = express();


/* Setting */

app.set('port', process.env.PORT || 4000);
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

/* Global variables */

app.use((reg, res, next) => {


    next();
});

/* Routes */

app.use(require('./routes'));

/* Public */

app.use(express.static(path.join(__dirname, 'public')));

/* Starting the server */
app.listen(app.get('port'), () =>{
    console.log('Server on port', app.get('port'));
} );