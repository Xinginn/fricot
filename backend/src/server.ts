import express, { Application, NextFunction } from 'express';

import cors from 'cors';
import { getRoot } from './routes/getRoot';


async function main() {
  const app = express() as unknown as Application;


  app.use(cors());

  app.use((req, res, next: NextFunction) => {
    console.log(new Date().toISOString(), req.method, req.path);
    next();
  });

  // routes
  getRoot(app);



  const port = process.env.PORT || 3000;
  app.listen(port, () => {
    console.log(`\nServer is runnning on port ${port}`);
  });

}

main();
