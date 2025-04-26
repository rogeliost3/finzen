import User from "../../models/User.js";
import { hash, compare } from "../../utils/bcryptjs.js";
import Errors from "../../utils/errors.js";


async function register(userData) {

    // TODO passwordConfirm 

    // Comprobar si el email ya existe
    const userExists = await User.findOne({
        where: {
            email: userData.email
        }
    })
    if (userExists) {
        throw new Errors.UserEmailAlreadyExists();
    }

    // Solo puede haber un admin
    if (userData.isAdmin) {
        userData.isAdmin = false
    }

    const hashedPassword = await hash(userData.password);

    userData.password = hashedPassword;
    const result = await User.create(userData);
    return result;
}

async function login(email, password) {

    // Comprobar si el email existe
    const userData = await User.findOne({
        where: {
            email: email
        }
    })
    if (!userData) {
        throw new Errors.NotFound();
    }

    // Comprobar la contraseña
    const matchPassword = await compare(password, userData.password);
    if (matchPassword) {
        const user = await User.findByPk(userData.idUser);
        return user
    } else {
        throw new Errors.UserInvalidCredentials();
    }
}

export default {
    register,
    login,
}