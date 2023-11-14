import { prisma } from "./prisma";

export async function findBox(id: number) {
  const results = await prisma.box.findUnique({
    where: { id },
    include: {
      boxContent: {
        include: {
          product: true
        }
      }
    }
  });

  
  return results;
}

export async function findBoxes() {
  const result = await prisma.box.findMany({
    include: {
      boxContent: {
        include: {
          product: true
        }
      }
    }
  })
  return result;
}

export async function createBox(data: any) {
  const {content, ...boxData} = data;

  let box = await prisma.box.create({
    data: {
      ...boxData,
    }
  });

  const boxContent: any = [];
  for (const item of content) {
    const productQuantity = await prisma.productQuantity.create({
      data: {
        box_id: box.id,
        product_id: item.id,
        quantity: item.quantity
      }
    })
    boxContent.push(productQuantity)
  }

  return await findBox(box.id);
}