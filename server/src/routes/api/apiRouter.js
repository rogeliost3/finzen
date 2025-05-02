import { Router } from "express";
import categoriesAPIRouter from "./categoriesAPIRouter.js";
import transactionAPIRouter from "./transactionAPIRouter.js";
import authAPIRouter from "./authAPIRouter.js";
import userAPIRouter from "./userAPIRouter.js";
import budgetAPIRouter from "./budgetAPIRouter.js";
import goalAPIRouter from "./goalAPIRouter.js";

const router = Router();

router.get("/", (req, res) => {
    res.send("welcome to Finzen API");
})
router.use("/", authAPIRouter); // /api
router.use("/categories", categoriesAPIRouter);
router.use("/user", userAPIRouter); // /api/user
router.use("/transaction", transactionAPIRouter); // /api/transaction
router.use("/budget", budgetAPIRouter); // /api/budget
router.use("/goal",goalAPIRouter); // /api/goal

export default router