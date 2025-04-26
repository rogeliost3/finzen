import { Router } from "express";
import apiRouter from "./api/apiRouter.js";


const router = Router();

router.get("/", (req, res) => {
    const message = req.query.message || null;
    const error = req.query.error || null;
    res.send("home", { message, error });
});

router.use("/api",apiRouter);


export default router;

