-- DropForeignKey
ALTER TABLE "Report" DROP CONSTRAINT "Report_medicationId_fkey";

-- AlterTable
ALTER TABLE "Report" ALTER COLUMN "medicationId" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "Report" ADD CONSTRAINT "Report_medicationId_fkey" FOREIGN KEY ("medicationId") REFERENCES "Medication"("id") ON DELETE SET NULL ON UPDATE CASCADE;
