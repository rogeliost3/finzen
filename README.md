# finzen
Proyecto individual de contabilidad personal y objetivos de ahorro

Proyecto personal que cumple con los requisitos técnicos (Node.js + Express + Sequelize + MySQL, API, 4 o 5 tablas y manejo de usuarios y sesiones con encriptacion de password JWT. En el futuro conexion a API del banco e importar los datos :)


💸 FINZEN. Controlador de Finanzas Personales

Descripción:
Una aplicación web para ayudar a los usuarios a gestionar sus gastos, ingresos y presupuestos mensuales y objetivos de ahorro.

Tablas:
- Users
- Transactions (gastos o ingresos, con categoría y fecha)
- Categories (alimentación, transporte, ocio, etc.)
- Budgets (presupuestos por categoría o mes)
- Goals (objetivos de ahorro o de gasto)

Users
    id
    name
    email
    password (hasheada)

Transactions
    id
    userId (FK)
    type (income | expense)
    amount
    description
    categoryId (FK)
    date
    createdAt, updatedAt

Categories
    id
    name (e.g. "Alimentación", "Ocio", etc.)
    userId (FK opcional si son personalizadas)

Budgets
    id
    userId (FK)
    categoryId (FK)
    limitAmount
    month (formato YYYY-MM)
    createdAt

Goals
    id
    userId (FK)
    title
    targetAmount
    currentAmount
    deadline (fecha objetivo)
    createdAt

Relaciones
- User tiene muchas Transactions, Budgets, Goals
- Transaction pertenece a User y Category
- Budget pertenece a User y Category
- Category es global y suministrada por cada banco que tiene su propia lista de categorias particular

Funcionalidades del backend
- Registro/Login con JWT
- CRUD de usuarios
- CRUD de presupuestos (budgets)
- CRUD de metas financieras (goals)

API para obtener:
- ingresos/egresos del mes actual
- balance
- presupuestos activos y si están pasados
- progreso en metas


Controladores por tabla

AuthController
// register, login, logout, getProfile

TransactionController
// GET /transactions => lista todas las transacciones del usuario
// GET /transactions/:id => detalle de una transacción
// GET /summary => resumen mensual (gastos/ingresos por categoría)

CategoryController
// GET /categories => lista categorías globales

BudgetController
// GET /budgets => todos los presupuestos del usuario
// POST /budgets => crear presupuesto para categoría/mes
// PUT /budgets/:id => actualizar presupuesto
// DELETE /budgets/:id => eliminar presupuesto

GoalController
// GET /goals => metas del usuario
// POST /goals => crear meta
// PUT /goals/:id => actualizar progreso
// DELETE /goals/:id => eliminar meta

Extra API endpoint útil
GET /dashboard
// Devuelve:
// - ingresos/egresos del mes actual
// - balance
// - presupuestos activos y si están pasados
// - progreso en metas

PUESTA EN MARCHA:
simplemente hacer:
    docker compose up --build

    Se crearan el contenedor de la aplicacion y el de la base de datos, que estará poblada con datos falsos.
    Si surge algun problema con el puerto 3310, hay que configurar .env y cambiarlo a otro que esté disponible.

Llamar a la aplicacion con
    localhost:3000


