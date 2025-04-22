import { DataTypes } from 'sequelize';
import connection from '../config/sequelize.js';

const Transaction = connection.define('Transaction', {
  type: { type: DataTypes.ENUM('income', 'expense'), allowNull: false },
  amount: { type: DataTypes.FLOAT, allowNull: false },
  description: { type: DataTypes.STRING },
  date: { type: DataTypes.DATEONLY, allowNull: false }
}, {
  timestamps: true,
});

export default Transaction;
