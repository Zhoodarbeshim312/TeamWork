import { Router } from "express";
import cors from "cors";
const globalRouter = Router();
const corsConfig = {
  origin: ["http://localhost:3000"],
};

export default globalRouter;
