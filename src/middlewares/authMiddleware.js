import { verifyToken } from "../utils/token.js";

// function isLoggedInSession(req,res,next){
//     const user  = req.session.user;
//     if(!user){
//         return res.redirect("/login?error=You+are+not+logged+in")
//     }
//     // lo ideal sería comprobar en base de datos que el usuario existe
//     next();
// }
function isLoggedInAPI(req, res, next) {
    const authorization = req.headers.authorization;
    console.log("authorization", authorization);

    if (!authorization || !authorization.startsWith('Bearer ')) {
        return res.status(401).json({ error: "You shall not pass1" });
    }
    let token = authorization.split(" ");
    token = token.pop();
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
            return res.status(401).json({ error: "You shall not pass2" });
        }
    } catch (error) {
        console.error("Token verification error:", error.message);
        return res.status(401).json({ error: "Invalid or expired token" });
    }
}
// async function isSeller(req,res,next){
//     const user  = req.session.user;
//     if(!user){
//         return res.redirect("/login?error=You+are+not+logged+in")
//     }
//     if(user.role ==="seller"){
//         next();
//     }else{
//         return res.redirect("/login?error=You+are+not+a+seller")
//     }
// }

// function isNotLoggedIn(req,res,next){
//     console.log("authMiddleware:isNotLoggedIn");
//     const member = req.session.member;
//     if(member){
//         return res.redirect("/?error=You+are+already+logged+in")
//     }
//     next();
// }

// async function isAdmin(req,res,next){
//     console.log("authMiddleware:isAdmin");
//     const member  = req.session.member;
//     if(!member){
//         return res.redirect("/?error=You+are+not+logged+in")
//     }
//     if(member.isAdmin){
//         next();
//     }else{
//         return res.redirect("/?error=You+are+not+a+admin")
//     }
// }


export {
    // isLoggedInSession,
    isLoggedInAPI
}