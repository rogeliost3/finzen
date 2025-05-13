import { Router } from "express";
import userAPIController from "../../controllers/user/userAPIController.js" // default
import { isAdmin, isLoggedInAPI } from "../../middlewares/authMiddleware.js";
import { validateUserData, validateId } from "../../middlewares/validationMiddleware.js";
import Errors from "../../utils/errors.js";

const router = Router();

router.get("/", isLoggedInAPI, isAdmin, userAPIController.getAll);
router.put("/:id/edit", isLoggedInAPI, ...validateId(), ...validateUserData(), Errors.throwErrors, userAPIController.edit);
router.delete("/:id/remove", isLoggedInAPI, ...validateId(), Errors.throwErrors, userAPIController.remove);
router.get("/:id", isLoggedInAPI, ...validateId(), Errors.throwErrors, userAPIController.getByID);


export default router;