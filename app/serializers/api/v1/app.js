import express from 'express';
import cors from "cors";
import morgan from "morgan";
import helmet from "helmet";

import pkg from "../package.json";

const path = require('path');
// import usersRoutes from "./routes/user.routes";
// import authRoutes from "./routes/auth.routes";

const app = express();

// Settings
app.set("pkg", pkg);
app.set("port", process.env.PORT || 4000);
app.set("json spaces", 4);

// Middlewares
const corsOptions = {
  // origin: "http://localhost:3000",
};
app.use(cors(corsOptions));
app.use(helmet());
app.use(morgan("dev"));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));

// Welcome Routes
app.get("/", (req, res) => {
  res.sendFile(path.join(__dirname+'/view/result.html'));
});

app.get("/myresults/pcrByQRCode/50015", (req, res) => {
  res.sendFile(path.join(__dirname+'/view/result.html'));
})
// Routes
// app.use("/api/users", usersRoutes);
// app.use("/api/auth", authRoutes);

export default app;