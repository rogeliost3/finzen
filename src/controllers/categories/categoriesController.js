
import Category from "../../models/Category.js";
// import { StandNameNotProvided, IncorrectStandSize, CategoryNotProvided, CategoryNotFound } from "../../utils/errors.js";


async function getAll() {
    const categories = await Category.findAll();
    return categories;
}


async function getByID(id) {
    const category = await Category.findByPk(id);
    return category;
}


export {
    getAll,
    getByID
}

export default {
    getAll,
    getByID
};