import { Request, Response } from "express";
import { createBox, findBox, findBoxes } from "../repositories/boxes.repository";

// GET boxes/:id
export async function getBox(req: Request, res: Response) {
  try {
    const id = parseInt(req.params.id); 
    const result = await findBox(id);
    res.status(200).send(result);
    return;
  } catch (error) {
    console.log(error);
    res.status(500).send(error)
    return
  }
}

// GET boxes
export async function getBoxes(req: Request, res: Response) {
  try {
    const id = parseInt(req.params.id); 
    const result = await findBoxes();
    res.status(200).send(result);
    return;
  } catch (error) {
    console.log(error);
    res.status(500).send(error)
    return
  }
}

// POST boxes
export async function postBox(req: Request, res: Response) {
  try {
    const payload = req.body;
    const result = await createBox(payload);
    res.status(200).send(result);
    return;
  } catch (error) {
    console.log(error);
    res.status(500).send(error)
    return
  }
}