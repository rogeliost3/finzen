# finzen
Proyecto individual de contabilidad personal y objetivos de ahorro

Proyecto personal que cumple con los requisitos técnicos (Node.js + Express + Sequelize + MySQL, API + Views, 4 o 5 tablas y manejo de usuarios y sesiones con encriptacion de password. En el futuro conexion a API del banco e importar los datos):

En principio se podria plantear que los datos de cada usuario se guarden en la misma base de datos, pero la aplicacion no tendria tiron comercial si la gente sabe que sus datos financieros van a estar guardados en un servidor ajeno y encima junto con los datos de mas usuarios. Con el riesgo actual de que sea robados, y tratandose de los datos financieros de cada uno, no sería viable. Por tanto he escogido que los datos personales se guarden en el movil o portatil donde se esté usando esta aplicacion, con posibilidad de portar la base de datos de un movil a un PC o a otro dispositivo donde queramos usarlo. Asi nuestros datos financieros estan bajo nuestra exclusiva responsabilidad.


💸 FINZEN. Controlador de Finanzas Personales
Tema: Finanzas / Contabilidad Personal

Descripción:
Una aplicación web para ayudar a los usuarios a gestionar sus gastos, ingresos y presupuestos mensuales.

Tablas:
Users
- Transactions (gastos o ingresos, con categoría y fecha)
- Categories (alimentación, transporte, ocio, etc.)
- Budgets (presupuestos por categoría o mes)
- Goals (objetivos de ahorro o de gasto)

Extra:
- API para consultar estadísticas mensuales
- Dashboard con resumen financiero en las Views
- Conexion a API de banco para obtener los datos de la cuenta personal

Detalle del controlador para la app de finanzas personales. 

🗂️ Estructura de tablas

🔁 Relaciones entre ellas

🧠 Funcionalidades clave del backend

📦 Controladores (por tabla)


Users
    id
    name
    email
    password (hasheada)
    createdAt, updatedAt

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
    type (income | expense)
    userId (FK opcional si son personalizadas)
    createdAt, updatedAt

Budgets
    id
    userId (FK)
    categoryId (FK)
    limitAmount
    month (formato YYYY-MM)
    createdAt, updatedAt

Goals
    id
    userId (FK)
    title
    targetAmount
    currentAmount
    deadline (fecha objetivo)
    createdAt, updatedAt

🔁 Relaciones
- User tiene muchas Transactions, Budgets, Goals
- Transaction pertenece a User y Category
- Budget pertenece a User y Category
- Category puede ser global o personalizada por usuario

🧠 Funcionalidades del backend
- Registro/Login con JWT
- CRUD de transacciones
- CRUD de presupuestos
- CRUD de metas financieras
- API para obtener:
    - Resumen mensual (ingresos, gastos, balance)
    - Transacciones por categoría/mes
    - Alertas si se supera el presupuesto
    - Progreso hacia una meta

📦 Controladores por tabla

🔐 AuthController
// register, login, logout, getProfile

💸 TransactionController
// GET /transactions => lista todas las transacciones del usuario
// GET /transactions/:id => detalle de una transacción
// POST /transactions => crea una transacción
// PUT /transactions/:id => actualiza
// DELETE /transactions/:id => elimina
// GET /summary => resumen mensual (gastos/ingresos por categoría)

🏷️ CategoryController
// GET /categories => lista categorías globales + del usuario
// POST /categories => (si permites personalizadas)
// DELETE /categories/:id => eliminar categoría personalizada

🧾 BudgetController
// GET /budgets => todos los presupuestos del usuario
// POST /budgets => crear presupuesto para categoría/mes
// PUT /budgets/:id => actualizar presupuesto
// DELETE /budgets/:id => eliminar presupuesto

🎯 GoalController
// GET /goals => metas del usuario
// POST /goals => crear meta
// PUT /goals/:id => actualizar progreso
// DELETE /goals/:id => eliminar meta

🛠️ Extra API endpoint útil
GET /dashboard
// Devuelve:
// - ingresos/egresos del mes actual
// - balance
// - presupuestos activos y si están pasados
// - progreso en metas

