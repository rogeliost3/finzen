// Middleware global para manejar errores
function errorHandler(err, req, res, next) {
    console.error(err); // Para ver el error en consola
    if (err instanceof Error) {
        return res.status(err.statusCode || 500).json({
            message: err.message,
            statusCode: err.statusCode || 500,
            idError: err.idError
        });
    }

    // Si no es un error personalizado, manejamos de otra forma
    return res.status(500).json({
        message: 'Unhandled error / Server error',
        statusCode: 500
    });
}

export default errorHandler;