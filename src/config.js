module.exports = {
    database: {
        connectionLimit: 10,
        host: process.env.DATABASE_HOST || 'localhost',
        user: process.env.DATABASE_USER || 'ae_tafur',
        password: process.env.DATABASE_PASSWORD || '$123',
        database: process.env.DATABASE_NAME || 'inarwa_db'
    },
    port: process.env.PORT || 4000
};