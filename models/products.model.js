const db = require('../utils/db');
const TABLE_CATEGORIES = 'products';
module.exports = {
    all: function () {
        return db.load(`select * from ${TABLE_CATEGORIES}`)
    },
    single: function (id) {
        return db.load(`select * from ${TABLE_CATEGORIES} where CatID = ${id}`)
    },
    add: function (entity) {
        return db.add(TABLE_CATEGORIES, entity);
    },
    patch: function (entity) {
        console.log(entity);
        
        const condition = {
            ProID: entity.ProID
        }
        delete entity.ProID;
        return db.patch(TABLE_CATEGORIES, entity, condition);
    },
    del: function (id) {
        const condition = {
            ProID: id
        }
        return db.del(TABLE_CATEGORIES, condition);
    },
    allByCat: function (CatID) {
        return db.load(`select * from ${TABLE_CATEGORIES} where CatID = ${CatID}`)
    },
}