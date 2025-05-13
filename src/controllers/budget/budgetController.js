import Errors from "../../utils/errors.js";
import Budget from "../../models/Budget.js";
import Category from "../../models/Category.js";
import { Op, fn, col } from "sequelize";
import Transaction from "../../models/Transaction.js";

async function create(idUser, budgetData) {
    const {idBudget, createdAt, ...safeData} = budgetData;
    safeData.idUser = idUser;
    if (!await Category.findByPk(safeData.idCategory)) {
        throw new Errors.NotFound();
    }
    return await Budget.create(safeData);
}

async function getAll(idUser) {
    const budgets = await Budget.findAll({
        attributes: ['idBudget', 'idUser', 'idCategory', 'limitAmount', 'month'],
        where: {
            idUser: idUser, // usuario logeado
        }
    });
    return budgets;
}

async function getByID(idUser, idBudget) {
    const budget = await Budget.findOne({
        where: {
            idUser,
            idBudget
        }
    });
    return budget;
}

async function edit(idUser, idBudget, budgetData) {
    const budget = await getByID(idUser, idBudget);

    if (!budget) {
        throw new Errors.NotFound();
    }
    await Budget.update(
        {
            idCategory: budgetData.idCategory,
            limitAmount: budgetData.limitAmount,
            month: budgetData.month
        },
        {
            where: {
                idBudget: idBudget,
                idUser
            }
        }
    )

    const updatedBudget = await Budget.findByPk(budget.idBudget);
    return {
        idUser: updatedBudget.idUser,
        idbudget: updatedBudget.idbudget,
        idCategory: updatedBudget.idCategory,
        limitAmount: updatedBudget.limitAmount,
        month: updatedBudget.month
    };
}

async function remove(idUser, idBudget) {
    const budget = await getByID(idUser, idBudget);
    if (!budget) {
        throw new Errors.NotFound();
    }
    const response = await Budget.destroy({
        where: {
            idBudget: idBudget
        }
    });
    return response > 0;
}


async function getAnualReport(idUser, year) {
    const budgets = await Budget.findAll({
        where: {
            idUser,
            month: {
                [Op.between]: [`${year}-01`, `${year}-12`] // Formato 'YYYY-MM'
            }
        },
        attributes: ['idUser','idBudget', 'idCategory', 'limitAmount', 'month'],
        include: [
            {
                model: Category,
                attributes: ['name',"icon"]
            }
        ]
    });
    const result = [];

    let totalBudget = 0;
    let totalSpent = 0;

    for (const budget of budgets) {        
        const { idCategory, month, limitAmount, idBudget, Category: category } = budget;

        // Obtener el rango de fechas para el mes
        const dateStart = `${month}-01`;

        const [yearStr, monthStr] = month.split("-");
        const year = parseInt(yearStr, 10);
        const monthNum = parseInt(monthStr, 10);

        // último día del mes (ej: 30, 31 o 28)
        const lastDay = new Date(year, monthNum, 0).getDate();
        const dateEnd = `${month}-${String(lastDay).padStart(2, "0")}`;

        // Buscar gastos reales en ese mes y categoría
        const transactions = await Transaction.findAll({
            where: {
                idUser,
                idCategory,
                type: 'expense',
                date: {
                    [Op.between]: [dateStart, dateEnd]
                }
            },
            attributes: [[fn('SUM', col('amount')), 'totalSpent']]
        });

        const spent = parseFloat(transactions[0]?.dataValues?.totalSpent) || 0;
        const balance = parseFloat((limitAmount - spent).toFixed(2));

        totalBudget += parseFloat(limitAmount);
        totalSpent += parseFloat(spent);
        console.log("icon: ", category.icon);
        result.push({
            idBudget,
            idUser,
            month,
            categoryName: category.name,
            limitAmount,
            totalSpent: spent,
            balance,
            icon: category.icon
        });
    }
    // Calcular totales anuales
    const numericBudget = Number(totalBudget) || 0;
    const numericSpent = Number(totalSpent) || 0;
    
    if (result.length>0) {
        result.push({totals: {
            totalBudget: numericBudget.toFixed(2),
            totalSpent: numericSpent.toFixed(2),
            totalBalance: (numericBudget - numericSpent).toFixed(2)
        }});
    }
    return result;
}


export {
    create,
    getAll,
    getByID,
    edit,
    remove,
    getAnualReport
}

export default {
    create,
    getAll,
    getByID,
    edit,
    remove,
    getAnualReport
};