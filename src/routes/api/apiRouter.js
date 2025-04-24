import { Router } from "express";
import categoriesAPIRouter from "./categoriesAPIRouter.js";
import transactionAPIRouter from "./transactionAPIRouter.js";
import authAPIRouter from "./authAPIRouter.js";
import userAPIRouter from "./userAPIRouter.js";
const router = Router();

router.get("/", (req, res) => {
    res.send("welcome to Finzen API");
})
router.use("/categories", categoriesAPIRouter);
// router.use("/product",productRouter);

router.use("/", authAPIRouter); // /api
router.use("/user", userAPIRouter); // /api/user
router.use("/transaction", transactionAPIRouter); // /api/transaction

export default router