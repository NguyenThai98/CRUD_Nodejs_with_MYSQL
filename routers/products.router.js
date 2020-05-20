const express = require('express');
const router  = express.Router();
const products = require('../models/products.model');

router.get('/', async (req, res) => {
    const listProducts = await products.all();
    // console.log(listProducts);
    res.render('vwProducts/list', {
        listProducts,
        empty: listProducts.length === 0
    });
 })
 
router.get('/add',(req, res) => {
     res.render('vwProducts/add');
 })

router.get('/edit', async (req, res) => {
    const id = +req.query.id || -1;
    const rows = await products.single(id);
    if(rows.length === 0)
       res.send('Invalid parameter')
    
    const product = rows[0];
    res.render('vwProducts/edit',{
        product
    });
})

router.post('/add', async (req, res) => {
    await products.add(req.body);     
    res.redirect('/admin/products');
})
router.post('/del', async (req, res) => {
    await products.del(req.body.ProID);     
    res.redirect('/admin/products');
})
router.post('/update', async (req, res) => {
    await products.patch(req.body);
    // await products.add(req.body);     
    res.redirect('/admin/products');
})
module.exports = router;