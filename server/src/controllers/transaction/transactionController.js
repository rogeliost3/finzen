import {Transaction, Category} from "../../models/E-R.js";
import { Op } from "sequelize";

async function getAll(idUser) {
    const transactions = await Transaction.findAll({
      attributes: ['date', 'type', 'amount', 'description' ],
      where: {
        idUser: idUser, // usuario logeado
      }
    });
    return transactions;
}

async function getByCategoryAndDate(idUser,idCategory,dateInit,dateEnd) {
  
  const transactions = await Transaction.findAll({
      attributes: ['date', 'type', 'amount', 'description' ],
      where: {
        idUser: idUser, // usuario logeado
        idCategory: idCategory, // categoría a filtrar
        date: {
          [Op.between]: [dateInit, dateEnd] // rango de fechas
        }
      },
      // include: [Category]
      include: [
        {
          model: Category,
          attributes: ['name']
        }
      ],
      order: [['date', 'ASC']]
    });
  return transactions;
}

export {
    getAll,
    getByCategoryAndDate
}

export default {
    getAll,
    getByCategoryAndDate
};