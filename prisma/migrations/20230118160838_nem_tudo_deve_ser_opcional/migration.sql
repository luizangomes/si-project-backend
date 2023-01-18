/*
  Warnings:

  - Made the column `nome` on table `Medication` required. This step will fail if there are existing NULL values in that column.
  - Made the column `content` on table `Report` required. This step will fail if there are existing NULL values in that column.
  - Made the column `nome` on table `User` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE "Medication" ALTER COLUMN "nome" SET NOT NULL;

-- AlterTable
ALTER TABLE "Report" ALTER COLUMN "content" SET NOT NULL;

-- AlterTable
ALTER TABLE "User" ALTER COLUMN "nome" SET NOT NULL;
