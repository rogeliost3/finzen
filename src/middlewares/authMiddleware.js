import { verifyToken } from "../utils/token.js";
import Errors from "../utils/errors.js";

function isLoggedInAPI(req, res, next) {
    const authorization = req.headers.authorization;

    if (!authorization || !authorization.startsWith('Bearer ')) {
        throw new Errors.InvalidApiKey;
    }
    let token = authorization.split(" ");
    token = token.pop();
    if (!token) {
        throw new Errors.NoTokenProvided;
    }
    const result = verifyToken(token);
    if (result) {
        req.user = {
            idUser: result.idUser,
            isAdmin: result.isAdmin
        }
        next();
    } else {
        throw new Errors.InvalidOrExpiredToken;
    }
}


async function isAdmin(req, res, next) {
    const user = req.user; // Viene del token verificado por isLoggedInAPI

    if (!user) {
        throw new Errors.UserNotLoggedIn;
    }

    if (user.isAdmin) {
        return next(); // Usuario es admin, puede continuar
    }
    throw new Errors.UserIsNotAdmin;
}


export {
    isLoggedInAPI,
    isAdmin
}