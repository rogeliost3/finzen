import express from 'express';
import dotenv from 'dotenv';
import cors from 'cors';
import router from './routes/router.js';
import session from 'express-session';
import errorHandler from './middlewares/errorHandlerMiddleware.js';

// Cargar variables de entorno
dotenv.config();

// Crear servidor Express
const app = express();
const PORT = process.env.APP_PORT || 3000;

// Configurar middleware
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(express.static("public"));

// Configurar motor de plantillas
// app.set('view engine', 'pug');
// app.set('views', 'src/views');


// Configurar sesión
app.use(session({
    secret: process.env.JWT_SECRET,
    resave: false,  //Solo guarda la sesión si ha sido modificada en cada request. Esto es para mejorar rendimiento.
    saveUninitialized: false, //No guarda una sesión hasta que algo se le asigne (por ejemplo, req.session.userId = 5).
    //Es la opción más recomendada en la mayoría de los casos por rendimiento y privacidad (especialmente con cookies y leyes como GDPR).
    //Si se pone true guardará todas las sesiones incluso las vacias de visitas anonimas.
    cookie: { 
        secure: false, // true para HTTPS
        maxAge: 1000 * 60 * 60 * 24 * 7 // 1 semana
    }
}));

app.use((req, res, next) => {
    const user = req.session.user;
    res.locals.isLoggedIn = !!user;
    res.locals.name = user?.name || null;
    res.locals.isAdmin = user?.isAdmin || false;
    res.locals.idUser = user?.idUser || null;
    next();
});

// Configurar rutas
app.use('/', router);
app.get('/test', (req, res) => {
    res.send('Conexión a la base de datos establecida');
})

//Middleware manejador global de errores
app.use(errorHandler);

// Iniciar servidor
app.listen(PORT, () => {
    console.log(`Servidor escuchando en http://localhost:${PORT}`);
});
