import { Router } from "express";
import { isLoggedInAPI } from "../../middlewares/authMiddleware.js";
import { validateQueryFields } from "../../middlewares/validationMiddleware.js";
import transactionAPIController from "../../controllers/transaction/transactionAPIController.js" // default
import Errors from "../../utils/errors.js";

const router = Router();

router.get("/", isLoggedInAPI, transactionAPIController.getAll);
router.post("/getCatAndDate", isLoggedInAPI, ...validateQueryFields(), Errors.throwErrors, transactionAPIController.getByCategoryAndDate);


export default router;