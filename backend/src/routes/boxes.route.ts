import bodyParser from "body-parser";
import { Application } from "express";
import { getBox, getBoxes, postBox } from "../controllers/boxes.controller";

export function boxesRoute(app: Application) {
  app.get('/boxes/:id', getBox);
  app.get('/boxes', getBoxes);

  app.post('/boxes', bodyParser.json(), postBox);
}