import { Router } from "express";
import { isLoggedInAPI } from "../../middlewares/authMiddleware.js";
import { validateGoalData, validateId, validateIncomeData } from "../../middlewares/validationMiddleware.js";
import goalAPIController from "../../controllers/goal/goalAPIController.js"
import Errors from "../../utils/errors.js";

const router = Router();

router.get("/", isLoggedInAPI, goalAPIController.getAll);
router.post("/create", isLoggedInAPI, ...validateGoalData(), Errors.throwErrors, goalAPIController.create);
router.put("/income",isLoggedInAPI, ...validateIncomeData(), Errors.throwErrors, goalAPIController.income);
router.get("/report",isLoggedInAPI, goalAPIController.report);
router.put("/:id/edit", isLoggedInAPI, ...validateId(), ...validateGoalData(), Errors.throwErrors, goalAPIController.edit);
router.delete("/:id/remove", isLoggedInAPI, ...validateId(), Errors.throwErrors, goalAPIController.remove);
router.get("/:id", isLoggedInAPI, ...validateId(), Errors.throwErrors, goalAPIController.getByID);

export default router;