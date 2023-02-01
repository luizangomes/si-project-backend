/*
  Warnings:

  - A unique constraint covering the columns `[id]` on the table `Medication` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[nome]` on the table `Medication` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id,nome]` on the table `Medication` will be added. If there are existing duplicate values, this will fail.

*/
-- DropForeignKey
ALTER TABLE "Report" DROP CONSTRAINT "Report_medicationId_fkey";

-- AlterTable
ALTER TABLE "Report" ADD COLUMN     "medicationName" TEXT;

-- CreateIndex
CREATE UNIQUE INDEX "Medication_id_key" ON "Medication"("id");

-- CreateIndex
CREATE UNIQUE INDEX "Medication_nome_key" ON "Medication"("nome");

-- CreateIndex
CREATE UNIQUE INDEX "Medication_id_nome_key" ON "Medication"("id", "nome");

-- AddForeignKey
ALTER TABLE "Report" ADD CONSTRAINT "Report_medicationId_medicationName_fkey" FOREIGN KEY ("medicationId", "medicationName") REFERENCES "Medication"("id", "nome") ON DELETE SET NULL ON UPDATE CASCADE;
