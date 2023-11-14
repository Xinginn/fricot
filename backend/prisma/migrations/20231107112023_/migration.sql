/*
  Warnings:

  - You are about to drop the `_BoxToProduct` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `_CommandLineToProduct` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `products` to the `Box` table without a default value. This is not possible if the table is not empty.
  - Added the required column `label` to the `CommandLine` table without a default value. This is not possible if the table is not empty.
  - Added the required column `products` to the `CommandLine` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "_BoxToProduct" DROP CONSTRAINT "_BoxToProduct_A_fkey";

-- DropForeignKey
ALTER TABLE "_BoxToProduct" DROP CONSTRAINT "_BoxToProduct_B_fkey";

-- DropForeignKey
ALTER TABLE "_CommandLineToProduct" DROP CONSTRAINT "_CommandLineToProduct_A_fkey";

-- DropForeignKey
ALTER TABLE "_CommandLineToProduct" DROP CONSTRAINT "_CommandLineToProduct_B_fkey";

-- AlterTable
ALTER TABLE "Box" ADD COLUMN     "products" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "CommandLine" ADD COLUMN     "label" TEXT NOT NULL,
ADD COLUMN     "productId" INTEGER,
ADD COLUMN     "products" TEXT NOT NULL;

-- DropTable
DROP TABLE "_BoxToProduct";

-- DropTable
DROP TABLE "_CommandLineToProduct";

-- AddForeignKey
ALTER TABLE "CommandLine" ADD CONSTRAINT "CommandLine_productId_fkey" FOREIGN KEY ("productId") REFERENCES "Product"("id") ON DELETE SET NULL ON UPDATE CASCADE;
