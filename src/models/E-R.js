import User from './User.js';
import Category from './Category.js';
import Transaction from './Transaction.js';
import Budget from './Budget.js';
import Goal from './Goal.js';

// Relaciones
User.hasMany(Transaction, { foreignKey: 'idUser' });
Transaction.belongsTo(User, { foreignKey: 'idUser' });

User.hasMany(Budget, { foreignKey: 'idUser' });
Budget.belongsTo(User, { foreignKey: 'idUser' });

User.hasMany(Goal, { foreignKey: 'idUser' });
Goal.belongsTo(User, { foreignKey: 'idUser' });

Category.hasMany(Transaction, { foreignKey: 'idCategory' });
Transaction.belongsTo(Category, { foreignKey: 'idCategory' });

Category.hasMany(Budget, { foreignKey: 'idCategory' });
Budget.belongsTo(Category, { foreignKey: 'idCategory' });

export {
  User,
  Category,
  Transaction,
  Budget,
  Goal
};
