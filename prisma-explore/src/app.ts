import express, { Application } from "express";
import userRoutes from "./modules/user/user.router";
const cors = require('cors');

const app:Application = express();
app.use(express.json())
app.use(cors());
app.use(express.urlencoded({ extended: true }));

// routes

app.use('/api/v1/user',userRoutes)

export default app