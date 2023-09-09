import { Router } from "express";
import { createUserController } from "./user.controller";

const userRoutes = Router()

userRoutes.post('/create-user',createUserController)


export default userRoutes