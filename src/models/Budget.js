import { DataTypes } from 'sequelize';
import connection from '../config/sequelize.js';

const Budget = connection.define('Budget', {
  idBudget: { type: DataTypes.INTEGER.UNSIGNED, autoIncrement: true, primaryKey: true },
  limitAmount: { type: DataTypes.FLOAT, allowNull: false },
  month: { type: DataTypes.STRING(7), allowNull: false }, // YYYY-MM
}, {
  tableName: 'Budgets',       // nombre exacto de la tabla en la DB
  freezeTableName: true,      // evita que Sequelize pluralice "Budget"
  timestamps: true,
  updatedAt: false
});

export default Budget;
