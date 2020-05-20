const express = require('express');
const router = express.Router();
const products = require('../models/products.model');
 
router.get('/bycat/:catId', async (req, res) => {
    for(const c of res.locals.lcProducts){
        if(c.CatID === +req.params.catId){
            c.isActive = true;
        }
    }
    const list = await products.allByCat(req.params.catId);    
    res.render('vwProducts/byCat', {
        products: list,
        empty: list.length === 0
    })
})


module.exports = router;