/*
  Warnings:

  - You are about to drop the column `data_fim` on the `Medication` table. All the data in the column will be lost.
  - You are about to drop the column `data_inicio` on the `Medication` table. All the data in the column will be lost.
  - You are about to drop the column `horarios` on the `Medication` table. All the data in the column will be lost.
  - Added the required column `dataFim` to the `Medication` table without a default value. This is not possible if the table is not empty.
  - Added the required column `dataInicio` to the `Medication` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Medication" DROP COLUMN "data_fim",
DROP COLUMN "data_inicio",
DROP COLUMN "horarios",
ADD COLUMN     "dataFim" TEXT NOT NULL,
ADD COLUMN     "dataInicio" TEXT NOT NULL,
ADD COLUMN     "horario" TEXT[];
