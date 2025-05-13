import userController from "../../controllers/user/userController.js";
import Errors from "../../utils/errors.js";

//Solo los administradores pueden ver todos los usuarios
async function getAll(req, res) {
    if (req.user.isAdmin) {
        const users = await userController.getAll();
        res.json(users);
    } else
        throw new Errors.Unauthorized();
}

// El usuario logeado solo puede solicitar sus datos
// El administrador puede solicitar cualquier usuario
async function getByID(req, res) {
    if (req.user.isAdmin || req.user.idUser == req.params.id) {
        const user = await userController.getByID(req.params.id);
        res.json(user);
    } else
        throw new Errors.Unauthorized();
}

// El usuario logeado solo puede editar sus datos
// El administrador puede editar cualquier usuario
async function edit(req, res) {
    if (req.user.isAdmin || req.user.idUser == req.params.id) {
        const result = await userController.edit(req.params.id, req.body);
        res.json(result);
    } else
        throw new Errors.Unauthorized();
}

// El usuario logeado solo puede borrar su cuenta
// El administrador puede borrar cualquier cuenta menos la suya
async function remove(req, res) {
    if ( (req.user.isAdmin && (req.params.id != req.user.idUser)) || req.user.idUser == req.params.id) {
        const response = await userController.remove(req.params.id);
        res.json(response);
    } else
        throw new Errors.Unauthorized();
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