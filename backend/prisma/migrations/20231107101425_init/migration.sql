-- CreateEnum
CREATE TYPE "Category" AS ENUM ('CHEESE', 'WINE', 'SWEETS');

-- CreateTable
CREATE TABLE "Product" (
    "id" SERIAL NOT NULL,
    "label" TEXT NOT NULL,
    "category" "Category" NOT NULL,
    "description" TEXT,
    "stock" INTEGER NOT NULL DEFAULT 0,
    "enabled" BOOLEAN NOT NULL DEFAULT true,
    "added_price" DOUBLE PRECISION NOT NULL DEFAULT 0.0,
    "image" TEXT NOT NULL,

    CONSTRAINT "Product_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Box" (
    "id" SERIAL NOT NULL,
    "label" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "enabled" BOOLEAN NOT NULL DEFAULT true,
    "price" DOUBLE PRECISION NOT NULL DEFAULT 19.95,

    CONSTRAINT "Box_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "username" TEXT NOT NULL,
    "password" TEXT NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CommandLine" (
    "id" SERIAL NOT NULL,
    "box_id" INTEGER NOT NULL,
    "quantity" INTEGER NOT NULL DEFAULT 1,
    "boxId" INTEGER,

    CONSTRAINT "CommandLine_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Command" (
    "id" SERIAL NOT NULL,
    "user_id" INTEGER NOT NULL,

    CONSTRAINT "Command_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_BoxToProduct" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "_CommandLineToProduct" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "Product_id_key" ON "Product"("id");

-- CreateIndex
CREATE UNIQUE INDEX "Box_id_key" ON "Box"("id");

-- CreateIndex
CREATE UNIQUE INDEX "User_id_key" ON "User"("id");

-- CreateIndex
CREATE UNIQUE INDEX "User_username_key" ON "User"("username");

-- CreateIndex
CREATE UNIQUE INDEX "CommandLine_id_key" ON "CommandLine"("id");

-- CreateIndex
CREATE UNIQUE INDEX "Command_id_key" ON "Command"("id");

-- CreateIndex
CREATE UNIQUE INDEX "_BoxToProduct_AB_unique" ON "_BoxToProduct"("A", "B");

-- CreateIndex
CREATE INDEX "_BoxToProduct_B_index" ON "_BoxToProduct"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_CommandLineToProduct_AB_unique" ON "_CommandLineToProduct"("A", "B");

-- CreateIndex
CREATE INDEX "_CommandLineToProduct_B_index" ON "_CommandLineToProduct"("B");

-- AddForeignKey
ALTER TABLE "CommandLine" ADD CONSTRAINT "CommandLine_boxId_fkey" FOREIGN KEY ("boxId") REFERENCES "Box"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_BoxToProduct" ADD CONSTRAINT "_BoxToProduct_A_fkey" FOREIGN KEY ("A") REFERENCES "Box"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_BoxToProduct" ADD CONSTRAINT "_BoxToProduct_B_fkey" FOREIGN KEY ("B") REFERENCES "Product"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_CommandLineToProduct" ADD CONSTRAINT "_CommandLineToProduct_A_fkey" FOREIGN KEY ("A") REFERENCES "CommandLine"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_CommandLineToProduct" ADD CONSTRAINT "_CommandLineToProduct_B_fkey" FOREIGN KEY ("B") REFERENCES "Product"("id") ON DELETE CASCADE ON UPDATE CASCADE;
