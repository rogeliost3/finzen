import userController from "../../controllers/user/userController.js";

async function getAll(req, res) {
    console.log("userAPIController:getAll");

    // try {
        const users = await userController.getAll();
        res.json(users);
    // } catch (error) {
    //     console.error(error);
    //     res.status(500).json({ error: "Server error" });
    // }
}

async function getByID(req, res) {
    console.log("userAPIController:getByID");

    // try {
        const id = req.params.id;
        const user = await userController.getByID(id);
        res.json(user);
    // } catch (error) {
    //     console.error(error);
    //     res.status(500).json({ error: "Server error" });
    // }
}


async function edit(req, res) {
    console.log("userAPIController:edit");
    // try {
        const id = req.params.id;
        const result = await userController.edit(id, req.body);
        res.json(result);
    // } catch (error) {
    //     console.error(error);
    //     if (error.statusCode) {
    //         res.status(error.statusCode).json({ error: error.message });
    //     } else {
    //         res.status(500).json({ error: "Server error" });
    //     }
    // }
}

async function remove(req, res) {
    console.log("userAPIController:remove");
    // try{
        const id = req.params.id;
        const response = await userController.remove(id);
        res.json(response);
    // } catch (error) {
    //     console.error(error);
    //     if (error.statusCode) {
    //         res.status(error.statusCode).json({ error: error.message });
    //     } else {
    //         res.status(500).json({ error: "Server error" });
    //     }
    // }
}

export {
    getAll,
    getByID,
    edit,
    remove
}

export default {
    getAll,
    getByID,
    edit,
    remove
};