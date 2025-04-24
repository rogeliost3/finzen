import { verifyToken } from "../utils/token.js";
/*
usuario 1 juan@gmail.com
eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZFVzZXIiOjEsImlzQWRtaW4iOmZhbHNlLCJpYXQiOjE3NDU1Mjg5MzIsImV4cCI6MTc0NTYxNTMzMn0.c6QZLvE-VfU329pQu37RF0D2EuncFsTKUnUAy0bmhSQ
*/
function isLoggedInAPI(req, res, next) {
    const authorization = req.headers.authorization;
    console.log("req.headers: ", req.headers);
    console.log("authorization", authorization);

    if (!authorization || !authorization.startsWith('Bearer ')) {
        return res.status(401).json({ error: "Invalid API Key" });
    }
    let token = authorization.split(" ");
    token = token.pop();
    console.log("token a verificar: ", token);
    if (!token) {
        return res.status(401).json({ error: 'No token provided' });
    }
    try {
        const result = verifyToken(token);
        console.log("token verified", result);
        if (result) {
            req.user = {
                idUser: result.idUser,
                isAdmin: result.isAdmin
            }
            next();
        } else {
            return res.status(401).json({ error: "You shall not pass" });
        }
    } catch (error) {
        console.error("Token verification error:", error.message);
        return res.status(401).json({ error: "Invalid or expired token" });
    }
}


async function isAdmin(req, res, next) {
    console.log("authMiddleware:isAdmin");

    const user = req.user; // Viene del token verificado por isLoggedInAPI

    if (!user) {
        return res.status(401).json({ error: "You are not logged in" });
    }

    if (user.isAdmin) {
        return next(); // Usuario es admin, puede continuar
    }

    return res.status(403).json({ error: "You are not an admin" });
}


export {
    isLoggedInAPI,
    isAdmin
}