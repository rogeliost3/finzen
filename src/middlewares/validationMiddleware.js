import { check } from "express-validator";
import errors from "../utils/errors.js";

function validateUserData() {
    return [

        // Validación de email
        check("email")
            .isEmail().withMessage(errors.INVALID_FORMAT),

        // Validación de password, DE MOMENTO LO DESCOMENTO PARA AGILIZAR DESARROLLO, COMPROBADO QUE FUNCIONA
        // check("password")
        //     .isLength({ min: 8 }).withMessage(errors.USER_PASSWORD_SHORT)
        //     .matches(/[0-9]/).withMessage(errors.USER_PASSWORD_NEEDS_NUMBER)
        //     .matches(/[A-Za-z]/).withMessage(errors.USER_PASSWORD_WITHOUT_LETTER),

        // Validación de nombre
        check("name")
            .notEmpty().withMessage(errors.NAME_NOT_PROVIDED),
    ];
}

function validateLoginData() {
    return [

        // Validación de email
        check("email")
            .isEmail().withMessage(errors.INVALID_FORMAT),

        // Validación de password
        check("password")
            .notEmpty().withMessage(errors.USER_PASSWORD_NOT_PROVIDED)
    ];
}

function validateId() {
    return [
        
        // Validación de id
        check("id")
            .notEmpty().withMessage(errors.DATA_IS_EMPTY)  // Verifica que no esté vacío
            .isInt().withMessage(errors.MUST_BE_NUMBER)    // Verifica que sea un número
        ];
}

function validateQueryFields() {
    return [
        check("dateInit")
            .notEmpty().withMessage(errors.DATA_IS_EMPTY)
            .isISO8601().withMessage(errors.INVALID_DATE),

        check("dateEnd")
            .notEmpty().withMessage(errors.DATA_IS_EMPTY)
            .isISO8601().withMessage(errors.INVALID_DATE),

        check("idCategory")
            .notEmpty().withMessage(errors.DATA_IS_EMPTY)
            .isInt().withMessage(errors.MUST_BE_NUMBER)
    ];
}

function validateBudgetData() { 
    return [
        check("idCategory")
            .notEmpty().withMessage(errors.DATA_IS_EMPTY)  
            .isInt().withMessage(errors.MUST_BE_NUMBER),   
        check("limitAmount")
            .notEmpty().withMessage(errors.DATA_IS_EMPTY)  
            .isFloat({ min: 0.01 }).withMessage(errors.MUST_BE_NUMBER),   
        check("month")
            .notEmpty().withMessage(errors.DATA_IS_EMPTY)  
            .isInt({ min: 1, max: 12 }).withMessage(errors.INVALID_DATE)
    ]; 
}

function validateGoalData() { 
    return [
        check("title")
            .notEmpty().withMessage(errors.DATA_IS_EMPTY),
        check("targetAmount")
            .notEmpty().withMessage(errors.DATA_IS_EMPTY)  
            .isFloat({ min: 0.01 }).withMessage(errors.MUST_BE_NUMBER),
        check("currentAmount")
            .notEmpty().withMessage(errors.DATA_IS_EMPTY)  
            .isFloat({ min: 0.01 }).withMessage(errors.MUST_BE_NUMBER),
        check("deadline")
            .notEmpty().withMessage(errors.DATA_IS_EMPTY)  
            .isISO8601().withMessage(errors.INVALID_DATE)/*.custom((value, { req }) => {
                console.log("[VALIDANDO] deadline:", value); 
                return true;
              }),*/
    ]; 
}

function validateIncomeData() {
    return [
        check("amount")
            .notEmpty().withMessage(errors.DATA_IS_EMPTY)  
            .isFloat({ min: 0.01 }).withMessage(errors.MUST_BE_NUMBER)
    ];
}

export { 
    validateUserData, 
    validateLoginData, 
    validateId, 
    validateQueryFields, 
    validateBudgetData, 
    validateGoalData, 
    validateIncomeData 
};

