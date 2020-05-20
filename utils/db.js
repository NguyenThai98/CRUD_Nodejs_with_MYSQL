const config = require('../config/config.json');
const mysql  = require('mysql');

let pool = mysql.createPool(config.mysql);

module.exports = {
    load: function(sql){
        return new Promise((resolve, reject) => {
            pool.query(sql, function(error, resutls, field) {
                error ? reject(error) : resolve(resutls);
            })
        })
    },
    add: function(table, entity){
        return new Promise((resolve, reject) => {
            const sql = `insert into ${table} set ?`;
            pool.query(sql,entity,function(error, resutls, field) {
                error ? reject(error) : resolve(resutls);
            })
        })
    },
    patch: function(table, entity,condition){
        return new Promise((resolve, reject) => {
            const sql = `update ${table} set ? where ?`;
        pool.query(sql,[entity,condition],function(error, resutls, field) {
                error ? reject(error) : resolve(resutls);
            })
        })
    },
    del: function(table,condition){
        return new Promise((resolve, reject) => {
            const sql = `delete from ${table} where ?`;
        pool.query(sql,condition,function(error, resutls, field) {
                error ? reject(error) : resolve(resutls);
            })
        })
    }
}