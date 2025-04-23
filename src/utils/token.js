import jwt from 'jsonwebtoken';
import dotenv from "dotenv";

/*
El token JWT (JSON Web Token) es una forma de autenticar usuarios sin tener que mantener una sesión en el servidor. 
Es muy usado en APIs modernas y apps SPA (Single Page Application).

El token se usa principalmente para autenticación. Es decir:
    - El usuario inicia sesión (por ejemplo, con email y password).
    - Si las credenciales son correctas, el backend genera un JWT firmado y se lo devuelve al cliente.
    - El cliente guarda el token (por ejemplo, en localStorage, sessionStorage o en una cookie).
    - En cada request futura, el cliente envía el token (usualmente en el header Authorization: Bearer <token>).
    - El backend verifica el token y, si es válido, le permite acceder a rutas protegidas.

Ventajas del uso de JWT:
    - Stateless: No necesitás guardar sesiones en el servidor.
    - Rápido de verificar.
    - Se puede usar en APIs RESTful y apps móviles fácilmente.
    - Escalable (ideal para microservicios).

Precauciones:
    - El JWT se puede leer (aunque está firmado, no está encriptado). No meter contraseñas ni info sensible.
    - Hay que protegerlo bien del lado del cliente (nada de meterlo en localStorage sin cuidado).
    - El exp (expiración) es esencial para que no queden válidos para siempre.
*/

dotenv.config();
const JWT_SECRET = process.env.JWT_SECRET;

function createToken(userData){
    const token = jwt.sign(userData, JWT_SECRET, { expiresIn: '24h' });
    return token;
}

function verifyToken(token){
    const result = jwt.verify(token,JWT_SECRET);
    return result;
}

export {
    createToken,
    verifyToken
}