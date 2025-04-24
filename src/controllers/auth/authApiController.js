import { createToken } from "../../utils/token.js";
import authController from "./authController.js";

async function register(req, res) {
    try {
        const result = await authController.register(req.body);
        res.json(result);
    } catch (error) {
        console.error(error);
        if (error.statusCode) {
            res.status(error.statusCode).json({ error: error.message });
        } else {
            res.status(500).json({ error: "Internal server error" });
        }
    }
}

async function login(req, res) {
    try {
        const { email, password } = req.body;
        const result = await authController.login(email, password);
        console.log("idUser logeado: ", result.idUser);
        const data = {
            idUser: result.idUser,
            isAdmin: result.isAdmin
        }
        const token = createToken(data);
        res.cookie('token', token, {
            httpOnly: true, // No accesible por JS
            secure: process.env.NODE_ENV === 'production', // Solo por HTTPS
            sameSite: 'Strict', // Protege contra CSRF
            maxAge: 1000 * 60 * 60 * 1 // Expira en 1 h
          });
        res.json({ token: token });
    } catch (error) {
        console.error(error);
        if (error.statusCode) {
            res.status(error.statusCode).json({ error: error.message });
        } else {
            res.status(500).json({ error: "Internal server error" });
        }
    }
}

function logout(req, res) {
    // res.clearCookie('token', {
    //     httpOnly: true,
    //     secure: process.env.NODE_ENV === 'production',
    //     sameSite: 'Strict',
    //   });
    res.json({ message: 'Logout exitoso' });
}

export default {
    register,
    login
}