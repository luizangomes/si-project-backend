/*
  Warnings:

  - A unique constraint covering the columns `[nome]` on the table `Medication` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "Medication_nome_key" ON "Medication"("nome");
