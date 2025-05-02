import budgetController from "./budgetController.js";

async function create(req, res) {
    const result = await budgetController.create(req.user.idUser,req.body);
    res.json(result);
}

async function getAll(req, res) {
    const budgets = await budgetController.getAll(req.user.idUser);
    res.json(budgets);
}

async function getByID(req, res) {
    const budget = await budgetController.getByID(req.user.idUser,req.params.id);
    res.json(budget);
}

async function edit(req, res) {
    const result = await budgetController.edit(req.user.idUser, req.params.id, req.body);
    res.json(result);
}

async function remove(req, res) {
    const response = await budgetController.remove(req.user.idUser,req.params.id);
    res.json(response);
}

// obtener listado de meses y balances de presupuestos
async function getAnualReport(req, res) {
    const report = await budgetController.getAnualReport(req.user.idUser, req.params.id);
    res.json(report);
}

export {
    create,
    getAll,
    getByID,
    edit,
    remove,
    getAnualReport
}

export default {
    create,
    getAll,
    getByID,
    edit,
    remove,
    getAnualReport
};