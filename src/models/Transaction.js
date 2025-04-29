import { DataTypes } from 'sequelize';
import connection from '../config/sequelize.js';

const Transaction = connection.define('Transaction', {
  idTransaction: { type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true },
  type: { type: DataTypes.ENUM('income', 'expense'), allowNull: false },
  amount: { type: DataTypes.FLOAT, allowNull: false },
  description: { type: DataTypes.STRING },
  date: { type: DataTypes.DATEONLY, allowNull: false }
}, {
  tableName: 'Transactions',       // nombre exacto de la tabla en la DB
  freezeTableName: true,      // evita que Sequelize pluralice "Transaction"
  timestamps: true,
});

export default Transaction;
