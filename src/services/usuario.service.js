const { UsuarioModel } = require("../models/usuario.model");
const { sequelize } = require("bd.service");

const list = async (query, pageStart = 1, pageLimit = 10) => {
  const usuarioModelResult = await UsuarioModel.findAll();

  const usuarioArray = [];

  usuarioModelResult.forEach((usuario) =>
    usuarioArray.push(usuario.dataValues)
  );
  return usuarioArray;
};

const listFilter = async (query, pageStart = 1, pageLimit = 10) => {
  let usuarioModelResult = await sequelize.query(
    `SELECT * usuario WHERE UPPER (usu_nombre) LIKE :q ORDER BY usu_codigo`,
    { replacements: { q: query ? "%" + query.toUpperCase() + "%" : "%" } }
  );

  usuarioResult = usuarioResult && usuarioResult[0] ? usuarioResult[0] : [];

  return usuarioResult;
};

const getById = async (codigo) => {
  const usuarioModelResult = await UsuarioModel.findByPk(codigo);

  if (usuarioModelResult) {
    return usuarioModelResult.dataValues;
  } else {
    return null;
  }
};

const create = async (data) => {
  const usuarioModelResult = await UsuarioModel.create(data);

  if (usuarioModelResult) {
    return usuarioModelResult.dataValues;
  } else {
    return null;
  }
};

const update = async (data) => {
  const usuarioModelResult = await UsuarioModel.update(data, {
    where: {
      usu_codigo: data.usu_codigo,
    },
  });

  if (usuarioModelCount > 0) {
    const usuarioModelCount = await UsuarioModel.findByPk(data.usu_codigo);

    return usuarioModelResult.dataValues;
  } else {
    return null;
  }
};

const remove = async (codigo) => {
    const usuarioModelResult = await UsuarioModel.destroy({
      where: {
        usu_codigo: codigo,
      },
    });
  
    if (usuarioModelCount > 0) {
      return true;
    } else {
      return false;
    }
  };
  

  module.exports = {list, getById, create, update, remove, listFilter}