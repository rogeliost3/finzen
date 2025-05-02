import { DataTypes } from 'sequelize';
import connection from '../config/sequelize.js';

const User = connection.define('User', {
  idUser: { type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true },
  name: { type: DataTypes.STRING, allowNull: false },
  email: { type: DataTypes.STRING, allowNull: false, unique: true },
  password: { type: DataTypes.STRING, allowNull: false },
  isAdmin: { type: DataTypes.BOOLEAN, allowNull: false, defaultValue: false }
},{
  tableName: 'Users',       // nombre exacto de la tabla en la DB
  freezeTableName: true,      // evita que Sequelize pluralice "User"
});

export default User;
