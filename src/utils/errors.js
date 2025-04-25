import { validationResult } from "express-validator";
import { DATE } from "sequelize";


/**
 * CATEGORY ERRORS
 */

const CATEGORY_NAME_NOT_PROVIDED=100;
class CategoryNameNotProvided extends Error {
    constructor() {
        super("Category name not provided");
        this.idError=CATEGORY_NAME_NOT_PROVIDED;
        this.statusCode = 400;
    }
}
const CATEGORY_NOT_FOUND=101;
class CategoryNotFound extends Error {
    constructor() {
        super("Category not found");
        this.idError=CATEGORY_NOT_FOUND;
        this.statusCode = 404;
    }
}


/**
 *  USER ERRORS
 */

const USER_NAME_NOT_PROVIDED=200;
class UserNameNotProvided extends Error {
    constructor() {
        super("User name not provided");
        this.idError=USER_NAME_NOT_PROVIDED;
        this.statusCode = 400;
    }
}

const USER_EMAIL_NOT_PROVIDED=201;
class UserEmailNotProvided extends Error {
    constructor() {
        super("User email not provided");
        this.idError=USER_EMAIL_NOT_PROVIDED;
        this.statusCode = 400;
    }
}

const USER_PASSWORD_NOT_PROVIDED=202;
class UserPasswordNotProvided extends Error {
    constructor() {
        super("User password not provided");
        this.idError=USER_PASSWORD_NOT_PROVIDED;
        this.statusCode = 400;
    }
}

const USER_EMAIL_ALREADY_EXISTS=203;
class UserEmailAlreadyExists extends Error {
    constructor() {
        super("User email already exists");
        this.idError=USER_EMAIL_ALREADY_EXISTS;
        this.statusCode = 400;
    }
}

const USER_INVALID_CREDENTIALS=204;
class UserInvalidCredentials extends Error {
    constructor() {
        super("Invalid credentials");
        this.idError=USER_INVALID_CREDENTIALS;
        this.statusCode = 401;
    }
}

const USER_EMAIL_FORMAT_INVALID=205;
class UserEmailFormatInvalid extends Error {
    constructor() {
        super("Email format is not valid" );
        this.idError=USER_EMAIL_FORMAT_INVALID;
        this.statusCode = 400;
    }
}

const USER_PASSWORD_SHORT=206;
class UserPasswordShorter extends Error {
    constructor() {
        super("Password must be at least 8 characters long");
        this.idError=USER_PASSWORD_SHORT;
        this.statusCode = 400;
    }
}

const USER_PASSWORD_WITHOUT_NUMBER=207;
class UserPasswordWithoutNumber extends Error {
    constructor() {
        super("Password must contain at least one number");
        this.idError=USER_PASSWORD_WITHOUT_NUMBER;
        this.statusCode = 400;
    }
}

const USER_PASSWORD_WITHOUT_LETTER=208;
class UserPasswordWithoutLetter extends Error {
    constructor() {
        super("Password must contain at least one letter");
        this.idError=USER_PASSWORD_WITHOUT_LETTER;
        this.statusCode = 400;
    }
}

const USER_NOT_FOUND=209;
class UserNotFound extends Error {
    constructor() {
        super("User not found");
        this.idError=USER_NOT_FOUND;
        this.statusCode = 404;
    }
}

const USER_IS_NOT_ADMIN=210;
class UserIsNotAdmin extends Error {
    constructor() {
        super("User is not admin");
        this.idError=USER_IS_NOT_ADMIN;
        this.statusCode = 403;
    }
}

const USER_NOT_LOGGED_IN=211;
class UserNotLoggedIn extends Error {    
    constructor() {
        super("User is not logged in");
        this.idError=USER_NOT_LOGGED_IN;
        this.statusCode = 401;
    }  
}

/* 
GENERAL USAGE ERRORS
*/
const DATA_IS_EMPTY=102;
class IdIsEmpty extends Error {
    constructor() {
        super("Data cannot be empty" );
        this.idError=DATA_IS_EMPTY;
        this.statusCode = 400;
    }
}

const ID_MUST_BE_NUMBER=103;
class IdMustBeNumber extends Error {
    constructor() {
        super("Id must be a number" );
        this.idError=ID_MUST_BE_NUMBER;
        this.statusCode = 400;
    }
}

const DATE_INVALID=104;
class DateInvalid extends Error {
    constructor() {
        super("Date is invalid" );
        this.idError=DATE_INVALID;
        this.statusCode = 400;
    }
}   

/*
SERVER ERRORS
*/
const UNHANDLED_ERROR=500;
class UnhandledError extends Error {
    constructor() {
        super("Unhandled error");
        this.idError=UNHANDLED_ERROR;
        this.statusCode = 500;
    }
}  


/*
TOKEN ERRORS
*/
const INVALID_OR_EXPIRED_TOKEN=501;
class InvalidOrExpiredToken extends Error {
    constructor() {
        super("Invalid or expired token");
        this.idError=INVALID_OR_EXPIRED_TOKEN;
        this.statusCode = 401;
    }
}

const NO_TOKEN_PROVIDED=502;
class NoTokenProvided extends Error {
    constructor() {
        super("No token provided");
        this.idError=NO_TOKEN_PROVIDED;
        this.statusCode = 401;
    }  
}

const INVALID_API_KEY=503;
class InvalidApiKey extends Error { 
    constructor() {
        super("Invalid API Key");
        this.idError=INVALID_API_KEY;
        this.statusCode = 401;
    }  
}

function throwErrors(req,res,next) {
    const errores=validationResult(req);
    console.log(`Han ocurrido {${errores.array().length}} errores de validación`);

    if (!errores.isEmpty()) {
        // Si hay errores de validación, lanzar errores personalizados usando idError
        for (let error of errores.array()) {
            console.log("error", error);
            switch (error.msg) {
                case CATEGORY_NAME_NOT_PROVIDED: throw new CategoryNameNotProvided();
                case CATEGORY_NOT_FOUND: throw new CategoryNotFound();
                case DATA_IS_EMPTY: throw new IdIsEmpty();
                case ID_MUST_BE_NUMBER: throw new IdMustBeNumber();
                case USER_NAME_NOT_PROVIDED: throw new UserNameNotProvided();
                case USER_EMAIL_NOT_PROVIDED: throw new UserEmailNotProvided();
                case USER_PASSWORD_NOT_PROVIDED: throw new UserPasswordNotProvided();
                case USER_EMAIL_ALREADY_EXISTS: throw new UserEmailAlreadyExists();
                case USER_INVALID_CREDENTIALS: throw new UserInvalidCredentials();
                case USER_NOT_FOUND: throw new UserNotFound();
                case USER_EMAIL_FORMAT_INVALID: throw new UserEmailFormatInvalid();
                case USER_PASSWORD_SHORT: throw new UserPasswordShorter();
                case USER_PASSWORD_WITHOUT_NUMBER: throw new UserPasswordWithoutNumber();
                case USER_PASSWORD_WITHOUT_LETTER: throw new UserPasswordWithoutLetter();
                case USER_IS_NOT_ADMIN: throw new UserIsNotAdmin();
                case USER_NOT_LOGGED_IN: throw new UserNotLoggedIn();
                case INVALID_OR_EXPIRED_TOKEN: throw new InvalidOrExpiredToken();
                case NO_TOKEN_PROVIDED: throw new NoTokenProvided();
                case INVALID_API_KEY: throw new InvalidApiKey();
                case DATE_INVALID: throw new DateInvalid();
                default:
                    throw new UnhandledError();
            }
        }
    }
    next();
}

export default {
    CATEGORY_NAME_NOT_PROVIDED,
    CATEGORY_NOT_FOUND, 
    USER_NAME_NOT_PROVIDED,
    USER_EMAIL_NOT_PROVIDED,
    USER_PASSWORD_NOT_PROVIDED,
    USER_EMAIL_ALREADY_EXISTS,
    USER_INVALID_CREDENTIALS,
    USER_NOT_FOUND,
    USER_EMAIL_FORMAT_INVALID,
    USER_PASSWORD_SHORT,
    USER_PASSWORD_WITHOUT_NUMBER,
    USER_PASSWORD_WITHOUT_LETTER,
    USER_IS_NOT_ADMIN,
    USER_NOT_LOGGED_IN,
    DATA_IS_EMPTY,
    ID_MUST_BE_NUMBER,
    INVALID_OR_EXPIRED_TOKEN,
    NO_TOKEN_PROVIDED,
    INVALID_API_KEY,
    DATE_INVALID,
    CategoryNameNotProvided,
    CategoryNotFound,
    IdIsEmpty,
    IdMustBeNumber,
    UserNameNotProvided,
    UserEmailNotProvided,
    UserPasswordNotProvided,
    UserEmailAlreadyExists,
    UserInvalidCredentials,
    UserNotFound,
    UserEmailFormatInvalid,
    UserPasswordShorter,
    UserPasswordWithoutNumber,
    UserPasswordWithoutLetter,
    UserIsNotAdmin,
    UserNotLoggedIn,
    InvalidOrExpiredToken,
    NoTokenProvided,
    InvalidApiKey,
    DateInvalid,
    throwErrors
}