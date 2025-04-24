import {Router} from "express";
import categoriesAPIController from "../../controllers/categories/categoriesAPIController.js"
import { isLoggedInAPI } from "../../middlewares/authMiddleware.js";
const router = Router();

// conseguir todos las categorias
router.get("/",isLoggedInAPI,categoriesAPIController.getAll)

// conseguir categoria por id
router.get("/:id",categoriesAPIController.getByID)

export default router;