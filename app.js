const express = require('express');
const exphbs = require('express-handlebars');
const app = express();
const categoryModels = require('./models/category.model');
require('express-async-errors');
const numeral = require('numeral');
const PORT = 3000;

app.engine('hbs', exphbs({
    defaultLayout: 'main.hbs',
    helpers: {
        format_Number: function (value) {
            return numeral(value).format('0,0') + ' đ';
        }
    }
}));

app.set('view engine', 'hbs');
app.use(async function (req, res, next) {
    const rows = await categoryModels.allWidthDetails();
    res.locals.lcProducts = rows;
    next();
})
app.use('/public', express.static('public'));
app.use(express.urlencoded({ extended: true }))

app.use('/admin/products', require('./routers/products.router'));

app.use('/products', require('./routers/_products.router'));

app.get('/', (req, res) => {
    res.send('<h1> HOME </h1>');
})

app.use(function (req, res) {
    res.render('404', { layout: false })
})

app.use(function (err, req, res, next) {
    console.error(err.stack)
    res.status(500).render('500', { layout: false })
})
app.listen(PORT, () => {
    console.log(`server start at http://localhost:${PORT}`);
})
