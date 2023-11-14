import { Application } from "express";
import { getProduct, getProducts } from "../controllers/products.controller";

export function productsRoute(app: Application) {
  app.get('/products/:id', getProduct);
  app.get('/products', getProducts);
}