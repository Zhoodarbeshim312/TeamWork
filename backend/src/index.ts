import buildApp from "./app";
const app = buildApp();
const PORT = Number(process.env.PORT) || 3000;
const startApp = async () => {
  try {
    new Promise<void>((resolve, reject) => {
      app
        .listen(
          {
            port: PORT,
            host: "0.0.0.0",
          },
          () => {
            console.log(`${new Date()}`);
            console.log(`🚀 Server run in: http://localhost:${PORT}`);
            resolve();
          }
        )
        .on("error", (error) => {
          reject(error);
        });
    });
  } catch (error) {
    console.log(`Server crashed: ${error}`);
    process.exit(1);
  }
};
startApp();
