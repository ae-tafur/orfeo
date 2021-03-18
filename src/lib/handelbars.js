const JsBarcode = require('jsbarcode');

const helpers = {};

helpers.JsBarcode = (savedTimestamp) => {
    return JsBarcode(".barcode").init();
};

module.exports = helpers;