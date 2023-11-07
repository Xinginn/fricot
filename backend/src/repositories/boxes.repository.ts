import { prisma } from "./prisma";

export async function findBox(id: number) {
  const result = await prisma.box.findUnique({
    where: { id }
  })
  return result;
}

export async function findBoxes() {
  const result = await prisma.box.findMany()
  return result;
}