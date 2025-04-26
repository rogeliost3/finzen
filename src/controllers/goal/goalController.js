import Errors from "../../utils/errors.js";
import Goal from "../../models/Goal.js";
import { Op, Sequelize } from "sequelize";

async function create(idUser, goalData) {
    goalData.idUser = idUser;
    return await Goal.create(goalData);
}

async function getAll(idUser) {
    const goals = await Goal.findAll({
        attributes: ['idGoal', 'idUser', 'title', 'targetAmount', 'currentAmount', 'deadline'],
        where: {
            idUser: idUser, // usuario logeado
        }
    });
    return goals;
}

async function getByID(idUser, idGoal) {
    const goal = await Goal.findOne({
        where: {
            idUser,
            idGoal
        }
    });
    return goal;
}

async function edit(idUser, idGoal, goalData) {
    const goal = await getByID(idUser, idGoal);

    if (!goal) {
        throw new Errors.NotFound();
    }
    await Goal.update(
        {
            title: goalData.title,
            targetAmount: goalData.targetAmount,
            currentAmount: goalData.currentAmount,
            deadline: goalData.deadline
        },
        {
            where: {
                idGoal,
                idUser
            }
        }
    )

    const updatedGoal = await Goal.findByPk(goal.idGoal);
    return {
        idUser: updatedGoal.idUser,
        idGoal: updatedGoal.idGoal,
        title: updatedGoal.title,
        targetAmount: updatedGoal.targetAmount,
        currentAmount: updatedGoal.currentAmount,
        deadline: updatedGoal.deadline
    };
}

async function remove(idUser, idGoal) {

    const goal = await getByID(idUser, idGoal);
    if (!goal) {
        throw new Errors.NotFound();
    }
    const response = await Goal.destroy({
        where: {
            idGoal: idGoal
        }
    });
    return response > 0;
}

async function income(idUser, idGoal, amount) {
    const goal = await getByID(idUser, idGoal);
    if (!goal) {
        throw new Errors.NotFound();
    }

    //mirar si la fecha del objetivo no ha vencido o si el objetivo se ha alcanzado ya
    if (parseFloat(goal.currentAmount) >= parseFloat(goal.targetAmount)) {
        throw new Errors.AlreadyAchieved();
    }
    if (new Date(goal.deadline) < new Date()) {
        throw new Errors.AlreadyExpired();
    }

    const response = await Goal.update(
        { currentAmount: parseFloat(goal.currentAmount) + parseFloat(amount) },
        { where: { 
            idGoal: idGoal,
            idUser
         } }
    );
    return response > 0;
}

async function report(idUser) {
    const result = [];

    //past goals achieved 
    let goals = await Goal.findAll({
        attributes: ['title', 'targetAmount', 'currentAmount', 'deadline'],
        where: {
            idUser: idUser,
            deadline: {
                [Op.lt]: new Date()
            },
            currentAmount: {
                [Op.gte]: Sequelize.col('targetAmount')
            }
        }
    });
    result.push({ type: 'past achieved', goals});

    //past goals not achieved 
    goals = await Goal.findAll({
        attributes: ['title', 'targetAmount', 'currentAmount', 'deadline'],
        where: {
            idUser: idUser,
            deadline: {
                [Op.lt]: new Date()
            },
            currentAmount: {
                [Op.lt]: Sequelize.col('targetAmount')
            }
        }
    });
    result.push({ type: 'past not achieved', goals});

    //future goals achieved 
    goals = await Goal.findAll({
        attributes: ['title', 'targetAmount', 'currentAmount', 'deadline'],
        where: {
            idUser: idUser,
            deadline: {
                [Op.gt]: new Date()
            },
            currentAmount: {
                [Op.gte]: Sequelize.col('targetAmount')
            }
        }
    });
    result.push({ type: 'future goals achieved', goals});

    //future goals pending 
    goals = await Goal.findAll({
        attributes: ['title', 'targetAmount', 'currentAmount', 'deadline'],
        where: {
            idUser: idUser,
            deadline: {
                [Op.gt]: new Date()
            },
            currentAmount: {
                [Op.lt]: Sequelize.col('targetAmount')
            }
        }
    });
    result.push({ type: 'future goals pending', goals});

    return result;
}

export {
    create,
    getAll,
    getByID,
    edit,
    remove,
    income,
    report
}

export default {
    create,
    getAll,
    getByID,
    edit,
    remove,
    income,
    report
};