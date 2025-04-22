import { DataTypes } from 'sequelize';
import connection from '../config/sequelize.js';

const Budget = connection.define('Budget', {
  limitAmount: { type: DataTypes.FLOAT, allowNull: false },
  month: { type: DataTypes.STRING(7), allowNull: false }, // YYYY-MM
}, {
  timestamps: true,
  updatedAt: false
});

export default Budget;
