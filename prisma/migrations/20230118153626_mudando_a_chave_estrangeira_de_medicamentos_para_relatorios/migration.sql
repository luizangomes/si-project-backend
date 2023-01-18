/*
  Warnings:

  - You are about to drop the column `reportId` on the `Medication` table. All the data in the column will be lost.
  - Added the required column `medicationId` to the `Report` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "Medication" DROP CONSTRAINT "Medication_reportId_fkey";

-- AlterTable
ALTER TABLE "Medication" DROP COLUMN "reportId";

-- AlterTable
ALTER TABLE "Report" ADD COLUMN     "medicationId" INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE "Report" ADD CONSTRAINT "Report_medicationId_fkey" FOREIGN KEY ("medicationId") REFERENCES "Medication"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
