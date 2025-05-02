import { Router } from "express";
import categoriesAPIController from "../../controllers/categories/categoriesAPIController.js"
import { isLoggedInAPI } from "../../middlewares/authMiddleware.js";
import { validateId } from "../../middlewares/validationMiddleware.js";
import Errors from "../../utils/errors.js";

const router = Router();

// conseguir todos las categorias
router.get("/", isLoggedInAPI, categoriesAPIController.getAll);

// conseguir categoria por id
router.get("/:id", isLoggedInAPI, ...validateId(), Errors.throwErrors, categoriesAPIController.getByID);

export default router;