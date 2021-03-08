const mariadb = require('mariadb');

const { database } = require('./keys');

const pool = mariadb.createPool( database );

pool.getConnection()
    .then(conn => {
        console.log("connected ! connection id is " + conn.threadId);
        conn.release(); //release to pool
    })
    .catch(err => {
        console.log("not connected due to error: " + err);
    });

module.exports = pool;