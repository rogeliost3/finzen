// import { userNameNotProvided, IncorrectuserSize, userCategoryNotProvided, userCategoryNotFound } from "../../utils/errors.js";
import User from "../../models/User.js";

async function getAll() {
    const users = await User.findAll();
    return users;
}


async function getByID(id) {
    const user = await User.findByPk(id);
    return user;
}

// async function create(data) {
//     const response = await User.create(data);
//     return response;
// }

async function edit(id, data) {
    const user = await User.findByPk(id);
    console.log("user: ", user);
    if (user === null) {
        const error = new Error("User not found");
        error.statusCode = 404;
        throw error;
    }
    // Hacer comprobaciones de name, email y password.
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
    const user = await User.findByPk(id);
    console.log("user: ", user);
    if (user === null) {
        const error = new Error("User not found");
        error.statusCode = 404;
        throw error;
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