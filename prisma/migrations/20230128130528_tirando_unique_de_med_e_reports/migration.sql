/*
  Warnings:

  - A unique constraint covering the columns `[id]` on the table `Report` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX "Report_medicationId_key";

-- DropIndex
DROP INDEX "Report_userId_key";

-- CreateIndex
CREATE UNIQUE INDEX "Report_id_key" ON "Report"("id");
