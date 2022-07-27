const express=require ('express');
const morgan =require ('morgan');
const exphbs=require('express-handlebars/dist');
const path=require ('path');


const app=express();


app.set ('port',process.env.PORT || 4000);
app.set('views', path.join(__dirname,'views'));

app.engine('hbs', exphbs.engine ({
    defaultLayout: 'main',
    layoutsDir:path.join(app.get('views'),'layouts'),
    partialsDir:path.join(app.get('views'),'partials'),
    extname: '.hbs',
    helpers: require('./lib/handlebars')
}))

app.set('view engine','hbs');

app.use(morgan('dev'));
app.use(express.urlencoded({extended:false}));
app.use(express.json());

//variables globales
app.use((req,res,next)=>{
    next();
});

//rutas
app.use(require('./routes/'));
app.use(require('./routes/autentification'));
app.use('/radios',require('./routes/radios'));

//archivos publicos


//
app.listen(app.get('port'),()=>{
    console.log("server on port ",app.get('port'));
});
