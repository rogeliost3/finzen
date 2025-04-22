import { DataTypes } from 'sequelize';
import connection from '../config/sequelize.js';

const Category = connection.define('Category', {
  name: { type: DataTypes.STRING, allowNull: false },
  type: { type: DataTypes.ENUM('income', 'expense'), allowNull: false }
});

export default Category;
