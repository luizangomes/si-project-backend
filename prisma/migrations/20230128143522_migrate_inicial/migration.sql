/*
  Warnings:

  - Added the required column `dosage` to the `Medication` table without a default value. This is not possible if the table is not empty.
  - Added the required column `endDate` to the `Medication` table without a default value. This is not possible if the table is not empty.
  - Added the required column `initialDate` to the `Medication` table without a default value. This is not possible if the table is not empty.
  - Added the required column `times` to the `Medication` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX "Report_id_key";

-- AlterTable
ALTER TABLE "Medication" ADD COLUMN     "dosage" TEXT NOT NULL,
ADD COLUMN     "endDate" TEXT NOT NULL,
ADD COLUMN     "initialDate" TEXT NOT NULL,
ADD COLUMN     "times" TEXT NOT NULL;
