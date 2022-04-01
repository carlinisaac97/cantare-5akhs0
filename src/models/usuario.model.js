const { DataTypes } = require("sequelize");
const { sequelize } = require("../services/bd.service");

const UsuarioModel = sequelize.define(
  "Usuario",
  {
    usu_codigo: {
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true,
      autoIncrement: true,
    },
    usu_nombre: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    usu_documento: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    usu_telefono: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    usu_email: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    usu_direccion: {
      type: DataTypes.STRING,
      allowNull: false,
    },
  },
  {
    tableName: "usuario",
    timestamps: false,
  }
);

module.exports = {
  UsuarioModel,
};
