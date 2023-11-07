import { prisma } from "./prisma";

export async function findProduct(id: number) {
  const result = await prisma.product.findUnique({
    where: { id }
  })
  return result;
}

export async function findProducts() {
  const result = await prisma.product.findMany()
  return result;
}

export async function createProduct(data: any) {
  const result = await prisma.product.create({
    data
  })
  return result;
}

export async function udpateProduct(id: number, data: any) {
  const result = await prisma.product.update({
    where: {id},
    data,
  })
}

export async function reduceStock(id: number, quantity: number) {
  const product = await findProduct(id);
  const newStock = product!.stock - quantity;
  udpateProduct(id, {stock: newStock});
}

export async function deleteProduct(id: number) {
  const result = await prisma.product
}