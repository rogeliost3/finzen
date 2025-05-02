import { validationResult } from "express-validator";
import { DATE } from "sequelize";


/**
 *  USER ERRORS
 */

const USER_EMAIL_NOT_PROVIDED=100;
class UserEmailNotProvided extends Error {
    constructor() {
        super("User email not provided");
        this.idError=USER_EMAIL_NOT_PROVIDED;
        this.statusCode = 400;
    }
}

const USER_PASSWORD_NOT_PROVIDED=101;
class UserPasswordNotProvided extends Error {
    constructor() {
        super("User password not provided");
        this.idError=USER_PASSWORD_NOT_PROVIDED;
        this.statusCode = 400;
    }
}

const USER_EMAIL_ALREADY_EXISTS=102;
class UserEmailAlreadyExists extends Error {
    constructor() {
        super("User email already exists");
        this.idError=USER_EMAIL_ALREADY_EXISTS;
        this.statusCode = 400;
    }
}

const USER_INVALID_CREDENTIALS=103;
class UserInvalidCredentials extends Error {
    constructor() {
        super("Invalid credentials");
        this.idError=USER_INVALID_CREDENTIALS;
        this.statusCode = 401;
    }
}

const USER_PASSWORD_SHORT=104;
class UserPasswordShort extends Error {
    constructor() {
        super("Password must be at least 8 characters long");
        this.idError=USER_PASSWORD_SHORT;
        this.statusCode = 400;
    }
}

const USER_PASSWORD_NEEDS_NUMBER=105;
class UserPasswordNeedsNumber extends Error {
    constructor() {
        super("Password must contain at least one number");
        this.idError=USER_PASSWORD_NEEDS_NUMBER;
        this.statusCode = 400;
    }
}

const USER_PASSWORD_WITHOUT_LETTER=106;
class UserPasswordWithoutLetter extends Error {
    constructor() {
        super("Password must contain at least one letter");
        this.idError=USER_PASSWORD_WITHOUT_LETTER;
        this.statusCode = 400;
    }
}

const USER_IS_NOT_ADMIN=107;
class UserIsNotAdmin extends Error {
    constructor() {
        super("User is not admin");
        this.idError=USER_IS_NOT_ADMIN;
        this.statusCode = 403;
    }
}

const USER_NOT_LOGGED_IN=108;
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

const NAME_NOT_PROVIDED=600;
class NameNotProvided extends Error {
    constructor() {
        super("Name not provided");
        this.idError=NAME_NOT_PROVIDED;
        this.statusCode = 400;
    }
}

const INVALID_DATE=605;
class InvalidDate extends Error {
    constructor() {
        super("Invalid date" );
        this.idError=INVALID_DATE;
        this.statusCode = 400;
    }
}   

const INVALID_FORMAT=601;
class InvalidFormat extends Error {
    constructor() {
        super("Invalid format" );
        this.idError=INVALID_FORMAT;
        this.statusCode = 400;
    }
}

const NOT_FOUND=602;
class NotFound extends Error {
    constructor() {
        super("Not found");
        this.idError=NOT_FOUND;
        this.statusCode = 404;
    }
}

const DATA_IS_EMPTY=603;
class DataIsEmpty extends Error {
    constructor() {
        super("Data cannot be empty" );
        this.idError=DATA_IS_EMPTY;
        this.statusCode = 400;
    }
}

const MUST_BE_NUMBER=604;
class MustBeNumber extends Error {
    constructor() {
        super("It must be a number" );
        this.idError=MUST_BE_NUMBER;
        this.statusCode = 400;
    }
}

const ALREADY_ACHIEVED=605;
class AlreadyAchieved extends Error {
    constructor() {
        super("It has already been achieved" );
        this.idError=ALREADY_ACHIEVED;
        this.statusCode = 400;
    }
}

const ALREADY_EXPIRED=605;
class AlreadyExpired extends Error {
    constructor() {
        super("It has already expired" );
        this.idError=ALREADY_EXPIRED;
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
const INVALID_OR_EXPIRED_TOKEN=200;
class InvalidOrExpiredToken extends Error {
    constructor() {
        super("Invalid or expired token");
        this.idError=INVALID_OR_EXPIRED_TOKEN;
        this.statusCode = 401;
    }
}

const NO_TOKEN_PROVIDED=201;
class NoTokenProvided extends Error {
    constructor() {
        super("No token provided");
        this.idError=NO_TOKEN_PROVIDED;
        this.statusCode = 401;
    }  
}

const INVALID_API_KEY=203;
class InvalidApiKey extends Error { 
    constructor() {
        super("Invalid API Key");
        this.idError=INVALID_API_KEY;
        this.statusCode = 401;
    }  
}

function throwErrors(req,res,next) {
    const errores=validationResult(req);

    if (!errores.isEmpty()) {
        // Si hay errores de validación, lanzar errores personalizados usando idError
        for (let error of errores.array()) {
            switch (error.msg) {
                case NAME_NOT_PROVIDED: throw new NameNotProvided();
                case NOT_FOUND: throw new NotFound();
                case DATA_IS_EMPTY: throw new DataIsEmpty();
                case MUST_BE_NUMBER: throw new MustBeNumber();
                case INVALID_FORMAT: throw new InvalidFormat();
                case ALREADY_ACHIEVED: throw new AlreadyAchieved();
                case ALREADY_EXPIRED: throw new AlreadyExpired();
                case USER_EMAIL_NOT_PROVIDED: throw new UserEmailNotProvided();
                case USER_PASSWORD_NOT_PROVIDED: throw new UserPasswordNotProvided();
                case USER_EMAIL_ALREADY_EXISTS: throw new UserEmailAlreadyExists();
                case USER_INVALID_CREDENTIALS: throw new UserInvalidCredentials();
                case USER_PASSWORD_SHORT: throw new UserPasswordShort();
                case USER_PASSWORD_NEEDS_NUMBER: throw new UserPasswordNeedsNumber();
                case USER_PASSWORD_WITHOUT_LETTER: throw new UserPasswordWithoutLetter();
                case USER_IS_NOT_ADMIN: throw new UserIsNotAdmin();
                case USER_NOT_LOGGED_IN: throw new UserNotLoggedIn();
                case INVALID_OR_EXPIRED_TOKEN: throw new InvalidOrExpiredToken();
                case NO_TOKEN_PROVIDED: throw new NoTokenProvided();
                case INVALID_API_KEY: throw new InvalidApiKey();
                case INVALID_DATE: throw new InvalidDate();
                default:
                    throw new UnhandledError();
            }
        }
    }
    next();
}

export default {
    NAME_NOT_PROVIDED,
    USER_EMAIL_NOT_PROVIDED,
    USER_PASSWORD_NOT_PROVIDED,
    USER_EMAIL_ALREADY_EXISTS,
    USER_INVALID_CREDENTIALS,
    NOT_FOUND,
    ALREADY_ACHIEVED,
    ALREADY_EXPIRED,
    INVALID_FORMAT,
    USER_PASSWORD_SHORT,
    USER_PASSWORD_NEEDS_NUMBER,
    USER_PASSWORD_WITHOUT_LETTER,
    USER_IS_NOT_ADMIN,
    USER_NOT_LOGGED_IN,
    DATA_IS_EMPTY,
    MUST_BE_NUMBER,
    INVALID_OR_EXPIRED_TOKEN,
    NO_TOKEN_PROVIDED,
    INVALID_API_KEY,
    INVALID_DATE,
    DataIsEmpty,
    MustBeNumber,
    NameNotProvided,
    AlreadyAchieved,
    AlreadyExpired,
    UserEmailNotProvided,
    UserPasswordNotProvided,
    UserEmailAlreadyExists,
    UserInvalidCredentials,
    NotFound,
    InvalidFormat,
    UserPasswordShort,
    UserPasswordNeedsNumber,
    UserPasswordWithoutLetter,
    UserIsNotAdmin,
    UserNotLoggedIn,
    InvalidOrExpiredToken,
    NoTokenProvided,
    InvalidApiKey,
    InvalidDate,
    throwErrors
}