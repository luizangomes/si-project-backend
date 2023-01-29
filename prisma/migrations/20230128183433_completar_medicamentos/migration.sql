/*
  Warnings:

  - Added the required column `data_fim` to the `Medication` table without a default value. This is not possible if the table is not empty.
  - Added the required column `data_inicio` to the `Medication` table without a default value. This is not possible if the table is not empty.
  - Added the required column `estoque` to the `Medication` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Medication" ADD COLUMN     "data_fim" TEXT NOT NULL,
ADD COLUMN     "data_inicio" TEXT NOT NULL,
ADD COLUMN     "estoque" TEXT NOT NULL,
ADD COLUMN     "horarios" TEXT[];
