import userController from "../../controllers/user/userController.js";

async function getAll(req, res) {
    try {
        const idUser = req.user.idUser; // por si queremos saber quién hace la petición en la api
        const users = await userController.getAll();
        res.json(users);
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: "Server error" });
    }
}

async function getByID(req, res) {
    try {
        const id = req.params.id;
        const user = await userController.getByID(id);
        res.json(user);
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: "Server error" });
    }
}

// async function create(req, res) {
//     try {
//         const response = await userController.create(req.body);
//         res.json(response);
//     } catch (error) {
//         console.error(error);
//         if (error.statusCode) {
//             res.status(error.statusCode).json({ error: error.message });
//         } else {
//             res.status(500).json({ error: "Server error" });
//         }
//     }
// }

async function edit(req, res) {
    console.log("userAPIController:edit");
    try {
        const id = req.params.id;
        const result = await userController.edit(id, req.body);
        res.json(result);
    } catch (error) {
        console.error(error);
        if (error.statusCode) {
            res.status(error.statusCode).json({ error: error.message });
        } else {
            res.status(500).json({ error: "Server error" });
        }
    }
}

async function remove(req, res) {
    console.log("userAPIController:remove");
    try{
        const id = req.params.id;
        const response = await userController.remove(id);
        res.json(response);
    } catch (error) {
        console.error(error);
        if (error.statusCode) {
            res.status(error.statusCode).json({ error: error.message });
        } else {
            res.status(500).json({ error: "Server error" });
        }
    }
}

export {
    getAll,
    getByID,
    // create,
    edit,
    remove
}

export default {
    getAll,
    getByID,
    // create,
    edit,
    remove
};