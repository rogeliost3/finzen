/**
 * CATEGORIES
 */

class CategoryNameNotProvided extends Error{
    constructor(){
        super("Category name not provided");
        this.statusCode = 400;
    }
}

class CategoryNotFound extends Error {
    constructor(){
        super("Category not found");
        this.statusCode = 404;
    }
}

/**
 *  USERS
 */
class UserNameNotProvided extends Error {
    constructor(){
        super("User name not provided");
        this.statusCode = 400;
    }
}

class UserEmailNotProvided extends Error {
    constructor(){
        super("User email not provided");
        this.statusCode = 400;
    }
}
class UserPasswordNotProvided extends Error {
    constructor(){
        super("User password not provided");
        this.statusCode = 400;
    }
}

class UserEmailAlreadyExists extends Error{
    constructor(){
        super("User email already exists");
        this.statusCode = 400;
    }
}
class UserInvalidCredentials extends Error {
    constructor(){
        super("Invalid credentials");
        this.statusCode = 401;
    }
}
export {
    CategoryNameNotProvided,
    CategoryNotFound,
    UserNameNotProvided,
    UserEmailNotProvided,
    UserPasswordNotProvided,
    UserEmailAlreadyExists,
    UserInvalidCredentials,
}