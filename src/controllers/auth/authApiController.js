import { createToken } from "../../utils/token.js";
import authController from "./authController.js";


async function register(req, res) {
        const result = await authController.register(req.body);
        res.json(result);
}

async function login(req, res) {
        const { email, password } = req.body;
        const result = await authController.login(email, password);
        const data = {
            name: result.name,
            idUser: result.idUser,
            isAdmin: result.isAdmin,
            email: result.email
        }
        const token = createToken(data);
        res.cookie('token', token, {
            httpOnly: true, // No accesible por JS
            secure: process.env.NODE_ENV === 'production', // Solo por HTTPS
            sameSite: 'Strict', // Protege contra CSRF
            maxAge: 1000 * 60 * 60 * 1 // Expira en 1 h
          });
        /* aunque el idUser, name y isAdmin esten en el token, 
         estos datos no están accesibles al frontend, 
         por lo que se enviarán accesibles en data */
        res.json({ token: token, user:data });
}

function logout(req, res) {
    res.clearCookie('token', {
        httpOnly: true,
        secure: process.env.NODE_ENV === 'production',
        sameSite: 'Strict',
      });
    res.json({ message: 'Cookie deleted' });
}

async function getUserInfo(req,res){
    const idUser = req.user.idUser;
    let result = await authController.getUserInfo(idUser);
    result.idUser = idUser;
    res.send({user:result});
}

export default {
    register,
    login,
    logout,
    getUserInfo
}