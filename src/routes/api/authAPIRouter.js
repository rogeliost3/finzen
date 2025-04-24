import { Router } from "express";
import authApiController from "../../controllers/auth/authApiController.js";
const router = Router();


router.post("/register",authApiController.register); // /api/register Cualquiera puede registrarse, sin control middleware
router.post("/login",authApiController.login); // /api/login Cualquier puede logearse, sin control middleware
// router.get("/logout",authApiController.logout); //  No se pone el middleware porque no se necesita para hacer logout

//JUEVES, ACABAR CRUD DE USER
// router.delete("/delete",isAdmin,userApiController.profile);
// router.post("/edit",isAdmin,userApiController.edit);

export default router;