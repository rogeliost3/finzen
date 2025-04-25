import Errors from "../../utils/errors.js"; 
import User from "../../models/User.js";
// import { validationResult } from 'express-validator';

async function getAll() {
    const users = await User.findAll();
    return users;
}

async function getByID(id) {
    // Errors.throwErrors(validationResult(req)); 
    
    const user = await User.findByPk(id);
    return user;
}

async function edit(id, data) {
    // Errors.throwErrors(validationResult(req)); 

    const user = await User.findByPk(id);
    if (user === null) {
        throw new Errors.UserNotFound();
    }
    const result = await User.update(
        data,
        {
            where: {
                idUser: id
            }
        }
    )
    const updatedUser = await User.findByPk(id);
    return { idUser: updatedUser.idUser, name: updatedUser.name, email: updatedUser.email, isAdmin: updatedUser.isAdmin };
}

async function remove(id) {
    // Errors.throwErrors(validationResult(req)); 
    
    const user = await User.findByPk(id);
    if (user === null) {
        throw new Errors.UserNotFound();
    }
    const response = await User.destroy({
        where: {
            idUser: id
        }
    });
    return response > 0;
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