import { verifyToken } from "../utils/token.js";
import Errors from "../utils/errors.js";

function isLoggedInAPI(req, res, next) {
    console.log("authMiddleware:isLoggedInAPI");
    const authorization = req.headers.authorization;
    console.log("req.headers: ", req.headers);
    console.log("authorization", authorization);

    if (!authorization || !authorization.startsWith('Bearer ')) {
        throw new Errors.InvalidApiKey;
        // return res.status(401).json({ error: "Invalid API Key" });
    }
    let token = authorization.split(" ");
    token = token.pop();
    console.log("token a verificar: ", token);
    if (!token) {
        throw new Errors.NoTokenProvided;
        // return res.status(401).json({ error: 'No token provided' });
    }
    // try {
        const result = verifyToken(token);
        console.log("token verified", result);
        if (result) {
            req.user = {
                idUser: result.idUser,
                isAdmin: result.isAdmin
            }
            next();
        } else {
            throw new Errors.InvalidOrExpiredToken;
            // return res.status(401).json({ error: "You shall not pass" });
        }
    // } catch (error) {
    //     console.error("Token verification error:", error.message);
    //     // return res.status(401).json({ error: "Invalid or expired token" });
    //     throw new Errors.InvalidOrExpiredToken;
    // }
}


async function isAdmin(req, res, next) {
    console.log("authMiddleware:isAdmin");

    const user = req.user; // Viene del token verificado por isLoggedInAPI

    if (!user) {
        throw new Errors.UserNotLoggedIn;
        // return res.status(401).json({ error: "You are not logged in" });
    }

    if (user.isAdmin) {
        return next(); // Usuario es admin, puede continuar
    }
    throw new Errors.UserIsNotAdmin;
    // return res.status(403).json({ error: "You are not an admin" });
}


export {
    isLoggedInAPI,
    isAdmin
}