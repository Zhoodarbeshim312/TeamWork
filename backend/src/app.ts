import "dotenv/config";
import express from "express";
const buildApp = () => {
  const app = express();
  app.use(express.json());
  app.get("/", (req, res) => {
    res.status(200).json({
      success: true,
      message: "🚀 Server running! Welcome to API",
    });
  });
  return app;
};
export default buildApp;
