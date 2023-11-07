import { Request, Response } from "express";
import { findProduct, findProducts } from "../repositories/products.repository";

// GET products/:id
export async function getProduct(req: Request, res: Response) {
  try {
    const id = parseInt(req.params.id);
    const result = await findProduct(id);
    res.status(200).send(result);
  } catch (error) {
    console.log(error)
    res.status(500).send(error);
  }
}

// GET product
export async function getProducts(req: Request, res: Response) {
  try {
    const result = await findProducts();
    res.status(200).send(result);
  } catch (error) {
    console.log(error)
    res.status(500).send(error);
  }
}