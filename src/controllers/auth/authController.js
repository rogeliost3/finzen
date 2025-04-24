import User from "../../models/User.js";
import { hash, compare } from "../../utils/bcryptjs.js";
import {
    UserNameNotProvided,
    UserEmailNotProvided,
    UserPasswordNotProvided,
    UserEmailAlreadyExists,
    UserInvalidCredentials
} from "../../utils/errors.js";

async function register(userData) {
    console.log(userData);
    if (!userData.name) {
        throw new UserNameNotProvided();
    }
    if (!userData.email) {
        throw new UserEmailNotProvided();
    }
    if (!userData.password) {
        throw new UserPasswordNotProvided();
    }
    // TODO passwordConfirm 
    const userExists = await User.findOne({
        where: {
            email: userData.email
        }
    })
    if (userExists) {
        throw new UserEmailAlreadyExists();
    }
    if (userData.isAdmin) {
        userData.isAdmin = false
    }
    const hashedPassword = await hash(userData.password);

    userData.password = hashedPassword;
    const result = await User.create(userData);
    return result;
}

async function login(email, password) {
    if (!email) {
        throw new UserEmailNotProvided();
    }
    if (!password) {
        throw new UserPasswordNotProvided();
    }
    const userData = await User.findOne({
        where: {
            email: email
        }
    })
    if (!userData) {
        throw new UserInvalidCredentials();
    }
    const matchPassword = await compare(password, userData.password);
    if (matchPassword) { // si la contraseña es correcta
        console.log(`User found: ${userData.idUser}`); // Agregar log aquí
        const user = await User.findByPk(userData.idUser);
        return user
    } else {
        return "Invalid credentials"; // throw new UserInvalidCredentials();
    }
}

export default {
    register,
    login,
}