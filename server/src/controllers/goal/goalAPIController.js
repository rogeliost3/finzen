import goalController from "./goalController.js";

async function create(req, res) {
    const result = await goalController.create(req.user.idUser,req.body);
    res.json(result);
}

async function getAll(req, res) {
    const goals = await goalController.getAll(req.user.idUser);
    res.json(goals);
}

async function getByID(req, res) {
    const goal = await goalController.getByID(req.user.idUser,req.params.id);
    res.json(goal);
}

async function edit(req, res) {
    const result = await goalController.edit(req.user.idUser, req.params.id, req.body);
    res.json(result);
}

async function remove(req, res) {
    const response = await goalController.remove(req.user.idUser,req.params.id);
    res.json(response);
}

async function income(req, res) {
    const result = await goalController.income(req.user.idUser, req.body.idGoal, req.body.amount);
    res.json(result);
}

async function report(req, res) {
    const report = await goalController.report(req.user.idUser);
    res.json(report);
}

export {
    create,
    getAll,
    getByID,
    edit,
    remove,
    income,
    report
}

export default {
    create,
    getAll,
    getByID,
    edit,
    remove,
    income,
    report
};