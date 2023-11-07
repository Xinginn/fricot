import { Application } from "express";

export function getRoot(app: Application) {
  app.get('/', (req, res) => {
    res.send('Bonjour monde');
  });
}