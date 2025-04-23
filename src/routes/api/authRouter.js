import { Router } from "express";
import authApiController from "../../controllers/auth/authApiController.js";
const router = Router();


router.post("/register",authApiController.register); // /api/register
router.post("/login",authApiController.login); // /api/login

export default router;