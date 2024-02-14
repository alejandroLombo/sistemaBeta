import express from "express";
import { getUser } from "../controllers/userControll.js";
const router = express.Router();


router.post('/', getUser);

export default router;