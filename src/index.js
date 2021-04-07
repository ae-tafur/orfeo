
 /* Importing the Main App */
 const app = require('./app');
 
 /* Starting the server */

 app.listen(app.get('port'));
 console.log('Server is in port', app.get('port'));