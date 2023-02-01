/*
  Warnings:

  - You are about to drop the column `medicationName` on the `Report` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "Report" DROP CONSTRAINT "Report_medicationId_medicationName_fkey";

-- DropIndex
DROP INDEX "Medication_id_nome_key";

-- DropIndex
DROP INDEX "Medication_nome_key";

-- AlterTable
ALTER TABLE "Report" DROP COLUMN "medicationName";

-- AddForeignKey
ALTER TABLE "Report" ADD CONSTRAINT "Report_medicationId_fkey" FOREIGN KEY ("medicationId") REFERENCES "Medication"("id") ON DELETE SET NULL ON UPDATE CASCADE;
