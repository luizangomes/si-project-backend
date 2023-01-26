/*
  Warnings:

  - A unique constraint covering the columns `[userId]` on the table `Report` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[medicationId]` on the table `Report` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "Report_userId_key" ON "Report"("userId");

-- CreateIndex
CREATE UNIQUE INDEX "Report_medicationId_key" ON "Report"("medicationId");
