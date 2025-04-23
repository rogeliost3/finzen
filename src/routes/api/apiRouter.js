import { Router } from "express";
import categoriesRouter from "./categoriesRouter.js";
// import productRouter from "./productRouter.js";
import authRouter from "./authRouter.js";

const router = Router();

router.get("/", (req, res) => {
    res.send("welcome to Finzen API");
})
router.use("/categories", categoriesRouter);
// router.use("/product",productRouter);

router.use("/", authRouter); // /api

export default router