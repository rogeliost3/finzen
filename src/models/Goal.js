import { DataTypes } from 'sequelize';
import connection from '../config/sequelize.js';

const Goal = connection.define('Goal', {
  title: { type: DataTypes.STRING, allowNull: false },
  targetAmount: { type: DataTypes.FLOAT, allowNull: false },
  currentAmount: { type: DataTypes.FLOAT, defaultValue: 0 },
  deadline: { type: DataTypes.DATEONLY, allowNull: false },
  
}, 
  {
    timestamps: true,
    updatedAt: false
  }
);

export default Goal;

