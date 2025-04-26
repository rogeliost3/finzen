import { Router } from "express";
import { isLoggedInAPI } from "../../middlewares/authMiddleware.js";
import { validateBudgetData, validateId } from "../../middlewares/validationMiddleware.js";
import budgetAPIController from "../../controllers/budget/budgetAPIController.js"
import Errors from "../../utils/errors.js";

const router = Router();

router.get("/", isLoggedInAPI, budgetAPIController.getAll);
router.post("/create", isLoggedInAPI, ...validateBudgetData(), Errors.throwErrors, budgetAPIController.create);
router.get("/report/:id/",isLoggedInAPI, ...validateId(), Errors.throwErrors, budgetAPIController.getAnualReport); 
router.put("/:id/edit", isLoggedInAPI, ...validateId(), ...validateBudgetData(), Errors.throwErrors, budgetAPIController.edit);
router.delete("/:id/remove", isLoggedInAPI, ...validateId(), Errors.throwErrors, budgetAPIController.remove);
router.get("/:id", isLoggedInAPI, ...validateId(), Errors.throwErrors, budgetAPIController.getByID);

export default router;