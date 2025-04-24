import {Router} from "express";
import userAPIController from "../../controllers/user/userAPIController.js" // default
import { isAdmin,isLoggedInAPI } from "../../middlewares/authMiddleware.js";

const router = Router();

router.get("/", isLoggedInAPI,isAdmin,userAPIController.getAll);
router.post("/:id/edit", isLoggedInAPI,isAdmin, userAPIController.edit);
router.post("/:id/remove", isLoggedInAPI,isAdmin, userAPIController.remove);
router.get("/:id", isLoggedInAPI, isAdmin,userAPIController.getByID);


export default router;