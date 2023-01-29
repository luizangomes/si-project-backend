/*
  Warnings:

  - Added the required column `tipo` to the `Medication` table without a default value. This is not possible if the table is not empty.
  - Changed the type of `estoque` on the `Medication` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- AlterTable
ALTER TABLE "Medication" ADD COLUMN     "tipo" TEXT NOT NULL,
DROP COLUMN "estoque",
ADD COLUMN     "estoque" INTEGER NOT NULL;
