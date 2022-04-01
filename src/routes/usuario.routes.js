const express = require("express");
const router = new express.Router();
const usuarioController = require("../controllers/usuario.controller");

router.get("/", usuarioController.list);
router.get("/filter", usuarioController.listFilter);
router.get("/find/:id", usuarioController.getById);
router.post("/create", usuarioController.create);
router.put("/update", usuarioController.update);
router.delte("/remove/:id", usuarioController.remove);

module.exports = router;
