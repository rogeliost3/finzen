import categoriesController from "./categoriesController.js";

async function getAll(req, res) {
    try {
        const idUser = req.user.idUser; // por si queremos saber quién hace la petición en la api
        const cats = await categoriesController.getAll();
        res.json(cats);
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: "Server error" });
    }
}

async function getByID(req, res) {
    try {
        const id = req.params.id;
        const cat = await categoriesController.getByID(id);
        res.json(cat);
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: "Server error" });
    }
}

export {
    getAll,
    getByID
}

export default {
    getAll,
    getByID
};