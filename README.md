# 💸 FINZEN.
Proyecto individual de API para contabilidad personal, presupuestos y objetivos de ahorro

Proyecto personal que cumple con los requisitos técnicos (Node.js + Express + Sequelize + MySQL, API, 4 o 5 tablas y manejo de usuarios y sesiones con encriptacion de password JWT. En el futuro conexion a API del banco e importar los datos (PLAID).


# Tablas:
- Users (Usuarios del sistema. Se registran ellos mismos. Solo habrá un administrador que se debe registrar al instalar la aplicación)
- Transactions (gastos o ingresos, con categoría y fecha)
- Categories (alimentación, transporte, ocio, etc.)
- Budgets (presupuestos por categoría o mes)
- Goals (objetivos de ahorro o de gasto)

## Users
- id
- name
- email
- password (hasheada)

## Transactions
- id
- userId (FK)
- type (income | expense)
- amount
- description
- categoryId (FK)
- date
- balance

## Categories
- id
- name (e.g. "Alimentación", "Ocio", etc.)
- userId (FK opcional si son personalizadas)

## Budgets
- id
- userId (FK)
- categoryId (FK)
- limitAmount
- month (formato YYYY-MM)
- createdAt

## Goals
- id
- userId (FK)
- title
- targetAmount
- currentAmount
- deadline (fecha objetivo)
- createdAt

# Funcionalidades del backend
- Registro/Login con JWT
- CRUD de usuarios
- CRUD de presupuestos (budgets)
- CRUD de metas financieras (goals)
- Transactions obtenidas por API de entidad bancaria. (Aun por implementar, se manejan datos ficticios)
- Reporte anual de presupuestos
- Reporte de objetivos
- Filtrado de transacciones por categoría y rango de fechas

# Endpoints
## Authentication
```POST api/register                   registro de un usuario              {name, email, password}```  
```POST api/login                      login de un usuario                 {email, password}```  
```GET  api//user-info                 obtiene la info del usuario logeado ```

## Users
```GET api/user/                       listado de usuarios, solo admin```  
```PUT api/user/:id/edit               edicion, usuario el suyo propio solo```
```                                    admin puede editar a todos          :id {name, email, password}```  
```DELETE api/user/:id/remove          borrado, usuario el suyo propio solo```
```                                    admin puede borrar a todos          :id ```  
```GET api/user/:id                    ver, usuario el suyo propio solo```
```                                    admin ve a todos                    :id```  

## Categories
```GET api/categories/                 listado de categorias del usuario```  
```GET api/categories/:id              ver una categoria por su id.        :id```  

## Transactions, del usuario logeado
```GET /:id                            ver un apunte por id, del usuario```  
```                                    logeado                             :id```  
```GET api/transaction/                ver todos los movimientos bancarios del usuario```  
```GET api/transaction/getCatAndDate   filtrar por categoria y rango de fechas. {idCategory, dateInit, dateEnd} YYYY-MM-DD```  

## Goals, del usuario logeado
```POST api/goal/create                crear un objetivo.                   {title, targetAmount, currentAmount, deadline}```  
```                                    Formato de fechas: YYYY-MM-DD```  
```PUT api/goal/income                 aportación a un objetivo             {idGoal, amount}```  
```GET api/goal/report                 reporte de los objetivos pasados```  
```                                    logrados y no logrados, y futuros```  
```                                    logrados y pendientes.```  
```PUT api/goal/:id/edit               edicion de un objetivo por id,       :id {title, targetAmount, currentAmount, deadline}```  
```DELETE api/goal/:id/remove          borrado de un objetivo por su id     :id```  

## Budgets, del usuario logeado
```GET api/budget/                     listado de presupuestos del usuario  ```  
```                                    logeado.```  
```POST api/budget/create              crear un presupuesto                 {idCategory, limitAmount, month}```  
```GET api/budget/report/:id/          reporte anual de presupuestos```  
```                                    del año indicado en :id              :id```  
```PUT api/budget/:id/edit             edicion de presupuesto por id,       {idCategory, limitAmount, month}```  
```DELETE api/budget/:id/remove        borrado de un presupuesto por id     :id```  
```GET api/budget/:id                  ver un presupuesto por id            :id```

# PUESTA EN MARCHA:
Generar el contenedor docker:
    - Situarse en la carpeta del proyecto.
    - docker compose up --build
        Se crearan el contenedor de la aplicacion y el de la base de datos, que estará poblada con datos falsos.
        Si surge algun problema con el puerto 3310, hay que configurar .env y cambiarlo a otro que esté disponible.
    - Editar el example.env y poner la frase secreta para generacion de tokens renombrando luego a .env
    - Crear el usuario administrador. Luego editar la base de datos y poner el campo isAdmin a true, para ese usuario.
        Esto es porque solo puede haber un usuario administrador.

    - Llamar a la aplicacion con
        localhost:3000

MODIFICACIONES POSTERIORES :
Todos los endpoints devuelveN todos los campos de cada tabla, con sus idUser.
Se creó el end-point getUserInfo que devuelve la info del usuario logeado en ese momento
En la validacion de fecha para month, se ha quitado porque daba error si el mes se pasaba en formato "YYYY-MM"
