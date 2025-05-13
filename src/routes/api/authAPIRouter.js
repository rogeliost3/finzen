import { Router } from "express";
import authApiController from "../../controllers/auth/authApiController.js";
import { validateUserData, validateLoginData } from "../../middlewares/validationMiddleware.js";
import Errors from "../../utils/errors.js";
import { isLoggedInAPI } from "../../middlewares/authMiddleware.js";

const router = Router();

// /api/register Cualquiera puede registrarse
router.post("/register", ...validateUserData(), Errors.throwErrors, authApiController.register);

// /api/login Cualquier puede logearse
router.post("/login", ...validateLoginData(), Errors.throwErrors, authApiController.login);
router.post("/logout", authApiController.logout);
router.get("/user-info", isLoggedInAPI, authApiController.getUserInfo);

export default router;