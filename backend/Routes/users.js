import express from "express";
import {
  getUsers,
  getUserById,
  insertUsers,
  deleteUsers,
  updateUsers
} from "../Controllers/users.js";

const router = express.Router();

router.get("/", getUsers);
router.get("/users/:id", getUserById);
router.post("/", insertUsers);
router.delete("/:id", deleteUsers);
router.put("/:id", updateUsers);

export default router;
