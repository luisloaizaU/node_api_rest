import express from "express";
import cors from "cors";
import alumnosRoutes from "./routes/alumnos.routes.js";
import morgan from "morgan";

import config from "./config.js";

const app = express();

// configuraciones
app.set("port", config.port);

// Middlewares
app.use(cors());
app.use(morgan("dev"));
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

// Routes
app.use("/api", alumnosRoutes);

export default app;
