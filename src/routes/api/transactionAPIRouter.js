import {Router} from "express";
import transactionAPIController from "../../controllers/transaction/transactionAPIController.js" // default
import { isLoggedInAPI } from "../../middlewares/authMiddleware.js";

const router = Router();

router.get("/", isLoggedInAPI,transactionAPIController.getAll);
router.post("/getCatAndDate", isLoggedInAPI, transactionAPIController.getByCategoryAndDate);


export default router;