import { DataTypes } from 'sequelize';
import connection from '../config/sequelize.js';

const Goal = connection.define('Goal', {
  idGoal: { type: DataTypes.INTEGER.UNSIGNED, primaryKey: true, autoIncrement: true },
  title: { type: DataTypes.STRING, allowNull: false },
  targetAmount: { type: DataTypes.FLOAT, allowNull: false },
  currentAmount: { type: DataTypes.FLOAT, defaultValue: 0 },
  deadline: { type: DataTypes.DATEONLY, allowNull: false },
  
}, 
  {
    tableName: 'Goals',       // 👈 nombre exacto de la tabla en la DB
    freezeTableName: true,      // 👈 evita que Sequelize pluralice "Budget"
    timestamps: true,
    updatedAt: false
  }
);

export default Goal;

