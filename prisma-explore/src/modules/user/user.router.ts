import { Router } from "express";
import { createUserController, getAllUserController, getSingleUserController, updateProfileController } from "./user.controller";

const userRoutes = Router()

userRoutes.post('/create_user',createUserController)
userRoutes.post('/update_profile',updateProfileController)
userRoutes.get('/',getAllUserController)
userRoutes.get('/:id',getSingleUserController)


export default userRoutes