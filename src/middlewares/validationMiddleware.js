import { check } from 'express-validator';
import errors from '../utils/errors.js';

function validateUserData() {
    console.log("validateUserData");
    return [
        // Validación de email
        check('email')
            .isEmail().withMessage(errors.USER_EMAIL_FORMAT_INVALID),

        // Validación de password, DE MOMENTO LO DESCOMENTO PARA AGILIZAR DESARROLLO, COMPROBADO QUE FUNCIONA
        // check('password')
        //     .isLength({ min: 8 }).withMessage(errors.USER_PASSWORD_SHORT)
        //     .matches(/[0-9]/).withMessage(errors.USER_PASSWORD_WITHOUT_NUMBER)
        //     .matches(/[A-Za-z]/).withMessage(errors.USER_PASSWORD_WITHOUT_LETTER),

        // Validación de nombre
        check('name')
            .notEmpty().withMessage(errors.USER_NAME_NOT_PROVIDED),
    ];
}

function validateLoginData() {
    return [
        // Validación de email
        check('email')
            .isEmail().withMessage(errors.USER_EMAIL_FORMAT_INVALID),

        // Validación de password
        check('password')
            .notEmpty().withMessage(errors.USER_PASSWORD_NOT_PROVIDED)
    ];
}


function validateId() {
    return [
        // Validación de id
        check('id')
            .notEmpty().withMessage(errors.DATA_IS_EMPTY)  // Verifica que no esté vacío
            .isInt().withMessage(errors.ID_MUST_BE_NUMBER)    // Verifica que sea un número
        ];
}

function validateQueryFields() {
    return [
        check('dateInit')
            .notEmpty().withMessage(errors.DATA_IS_EMPTY)
            .isISO8601().withMessage(errors.INVALID_DATE_FORMAT),

        check('dateEnd')
            .notEmpty().withMessage(errors.DATA_IS_EMPTY)
            .isISO8601().withMessage(errors.INVALID_DATE_FORMAT),

        check('idCategory')
            .notEmpty().withMessage(errors.DATA_IS_EMPTY)
            .isInt().withMessage(errors.ID_MUST_BE_NUMBER)
    ];
}
export { validateUserData, validateLoginData, validateId, validateQueryFields };

