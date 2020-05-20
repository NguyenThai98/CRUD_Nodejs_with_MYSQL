const db = require('../utils/db');
const TABLE_CATEGORIES = 'categories';
module.exports = {
    all: function () {
        return db.load(`select * from ${TABLE_CATEGORIES}`)
    },
    allWidthDetails: function () {
        return db.load(`SELECT c.*,count(p.CatID) as number_of_products FROM ${TABLE_CATEGORIES} c left join products p on c.CatID = p.CatID
        group by CatID;`)
    },
}