/*
  Warnings:

  - You are about to drop the column `products` on the `Box` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Box" DROP COLUMN "products";

-- CreateTable
CREATE TABLE "ProductQuantity" (
    "id" SERIAL NOT NULL,
    "quantity" INTEGER NOT NULL DEFAULT 1,
    "product_id" INTEGER NOT NULL,
    "box_id" INTEGER NOT NULL,

    CONSTRAINT "ProductQuantity_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "ProductQuantity_id_key" ON "ProductQuantity"("id");

-- AddForeignKey
ALTER TABLE "ProductQuantity" ADD CONSTRAINT "ProductQuantity_product_id_fkey" FOREIGN KEY ("product_id") REFERENCES "Product"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ProductQuantity" ADD CONSTRAINT "ProductQuantity_box_id_fkey" FOREIGN KEY ("box_id") REFERENCES "Box"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
