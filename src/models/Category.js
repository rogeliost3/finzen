import { DataTypes } from 'sequelize';
import connection from '../config/sequelize.js';

const Category = connection.define('Category', {
  idCategory: { type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true },
  name: { type: DataTypes.STRING, allowNull: false },
  icon: { type: DataTypes.STRING, allowNull: true },
},
{
  tableName: 'Categories',       // nombre exacto de la tabla en la DB
  freezeTableName: true,      // evita que Sequelize pluralice "Category"
});

export default Category;
