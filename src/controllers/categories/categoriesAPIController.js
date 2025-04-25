import categoriesController from "./categoriesController.js";

async function getAll(req, res) {
    // try {
    console.log("categoriesAPIController:getAll");
        const cats = await categoriesController.getAll();
        res.json(cats);
    // } catch (error) {
    //     console.error(error);
    //     res.status(500).json({ error: "Server error" });
    // }
}

async function getByID(req, res) {
    // try {
    console.log("categoriesAPIController:getByID");
        const id = req.params.id;
        console.log("id: ", id);
        const cat = await categoriesController.getByID(id);
        res.json(cat);
    // } catch (error) {
    //     console.error(error);
    //     res.status(500).json({ error: "Server error" });
    // }
}

export {
    getAll,
    getByID
}

export default {
    getAll,
    getByID
};