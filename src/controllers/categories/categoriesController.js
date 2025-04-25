
import Category from "../../models/Category.js";
// import { validationResult } from 'express-validator';
import Errors from "../../utils/errors.js";


async function getAll() {
    const categories = await Category.findAll();
    return categories;
}


async function getByID(id) {
    console.log("categoriesController:getByID");
    // Errors.throwErrors(validationResult(req));
    const category = await Category.findByPk(id);
    if (!category) {
        throw new Errors.CategoryNotFound();
    }
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